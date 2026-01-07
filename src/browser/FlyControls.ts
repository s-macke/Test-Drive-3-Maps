import * as THREE from 'three';
import { MoveState, ContainerDimensions } from '@shared/types';

/**
 * @author James Baicoianu / http://www.baicoianu.com/
 */

export class FlyControls {
	object: THREE.Object3D;
	domElement: HTMLElement | Document;

	// API
	movementSpeed: number = 1.0;
	rollSpeed: number = 0.005;
	dragToLook: boolean = false;
	autoForward: boolean = false;

	// internals
	private tmpQuaternion: THREE.Quaternion = new THREE.Quaternion();
	private mouseenabled: boolean = false;
	private mouseStatus: number = 0;
	movementSpeedMultiplier: number = 1;

	moveState: MoveState = {
		up: 0, down: 0, left: 0, right: 0, forward: 0, back: 0,
		pitchUp: 0, pitchDown: 0, yawLeft: 0, yawRight: 0, rollLeft: 0, rollRight: 0
	};
	moveVector: THREE.Vector3 = new THREE.Vector3(0, 0, 0);
	rotationVector: THREE.Vector3 = new THREE.Vector3(0, 0, 0);

	private _mousemove: (event: MouseEvent) => void;
	private _mousedown: (event: MouseEvent) => void;
	private _mouseup: (event: MouseEvent) => void;
	private _keydown: (event: KeyboardEvent) => void;
	private _keyup: (event: KeyboardEvent) => void;
	private _contextmenu: (event: Event) => void;

	constructor(object: THREE.Object3D, domElement?: HTMLElement) {
	this.object = object;
	this.domElement = domElement !== undefined ? domElement : document;

	if (domElement) {
		(this.domElement as HTMLElement).setAttribute('tabindex', '-1');
	}

	// Bind event handlers
	this._mousemove = this.mousemove.bind(this);
	this._mousedown = this.mousedown.bind(this);
	this._mouseup = this.mouseup.bind(this);
	this._keydown = this.keydown.bind(this);
	this._keyup = this.keyup.bind(this);
	this._contextmenu = (event: Event) => event.preventDefault();

	// Add event listeners
	this.domElement.addEventListener('contextmenu', this._contextmenu, false);
	this.domElement.addEventListener('mousemove', this._mousemove as EventListener, false);
	this.domElement.addEventListener('mousedown', this._mousedown as EventListener, false);
	this.domElement.addEventListener('mouseup', this._mouseup as EventListener, false);

	window.addEventListener('keydown', this._keydown, false);
	window.addEventListener('keyup', this._keyup, false);

	this.updateMovementVector();
	this.updateRotationVector();
}

ChangeMouseStatus(status: boolean): void {
	this.mouseenabled = status;
	this.mouseStatus = 0;
	this.moveState = {
		up: 0, down: 0, left: 0, right: 0, forward: 0, back: 0,
		pitchUp: 0, pitchDown: 0, yawLeft: 0, yawRight: 0, rollLeft: 0, rollRight: 0
	};
	this.moveVector = new THREE.Vector3(0, 0, 0);
	this.rotationVector = new THREE.Vector3(0, 0, 0);
}

handleEvent(event: Event): void {
	const eventType = event.type as keyof FlyControls;
	if (typeof this[eventType] === 'function') {
	(this[eventType] as (event: Event) => void)(event);
}
}

keydown(event: KeyboardEvent): void {
	if (event.altKey) {
	return;
}

switch (event.keyCode) {
	case 16: /* shift */ this.movementSpeedMultiplier = .1; break;

	case 87: /*W*/ this.moveState.forward = 1; break;
	case 83: /*S*/ this.moveState.back = 1; break;

	case 65: /*A*/ this.moveState.left = 1; break;
	case 68: /*D*/ this.moveState.right = 1; break;

	case 82: /*R*/ this.moveState.up = 1; break;
	case 70: /*F*/ this.moveState.down = 1; break;

	case 38: /*up*/ this.moveState.pitchUp = 1; break;
	case 40: /*down*/ this.moveState.pitchDown = 1; break;

	case 37: /*left*/ this.moveState.yawLeft = 1; break;
	case 39: /*right*/ this.moveState.yawRight = 1; break;

	case 81: /*Q*/ this.moveState.rollLeft = 1; break;
	case 69: /*E*/ this.moveState.rollRight = 1; break;
}

this.updateMovementVector();
this.updateRotationVector();
}

keyup(event: KeyboardEvent): void {
	switch (event.keyCode) {
case 16: /* shift */ this.movementSpeedMultiplier = 1; break;

case 87: /*W*/ this.moveState.forward = 0; break;
case 83: /*S*/ this.moveState.back = 0; break;

case 65: /*A*/ this.moveState.left = 0; break;
case 68: /*D*/ this.moveState.right = 0; break;

case 82: /*R*/ this.moveState.up = 0; break;
case 70: /*F*/ this.moveState.down = 0; break;

case 38: /*up*/ this.moveState.pitchUp = 0; break;
case 40: /*down*/ this.moveState.pitchDown = 0; break;

case 37: /*left*/ this.moveState.yawLeft = 0; break;
case 39: /*right*/ this.moveState.yawRight = 0; break;

case 81: /*Q*/ this.moveState.rollLeft = 0; break;
case 69: /*E*/ this.moveState.rollRight = 0; break;
}

this.updateMovementVector();
this.updateRotationVector();
}

mousedown(event: MouseEvent): void {
	if (!this.mouseenabled) return;

if (this.domElement !== document) {
	(this.domElement as HTMLElement).focus();
}

event.stopPropagation();

if (this.dragToLook) {
	this.mouseStatus++;
} else {
	switch (event.button) {
		case 0: this.moveState.forward = 1; break;
		case 2: this.moveState.back = 1; break;
	}

	this.updateMovementVector();
}
}

mousemove(event: MouseEvent): void {
	if (!this.mouseenabled) return;

if (!this.dragToLook || this.mouseStatus > 0) {
	const container = this.getContainerDimensions();
	const halfWidth = container.size[0] / 2;
	const halfHeight = container.size[1] / 2;

	this.moveState.yawLeft = -((event.pageX - container.offset[0]) - halfWidth) / halfWidth;
	this.moveState.pitchDown = ((event.pageY - container.offset[1]) - halfHeight) / halfHeight;

	this.updateRotationVector();
}
}

mouseup(event: MouseEvent): void {
	if (!this.mouseenabled) return;
event.preventDefault();
event.stopPropagation();

if (this.dragToLook) {
	this.mouseStatus--;
	this.moveState.yawLeft = this.moveState.pitchDown = 0;
} else {
	switch (event.button) {
		case 0: this.moveState.forward = 0; break;
		case 2: this.moveState.back = 0; break;
	}

	this.updateMovementVector();
}

this.updateRotationVector();
}

update(delta: number): void {
	const moveMult = delta * this.movementSpeed;
	const rotMult = delta * this.rollSpeed;

	this.object.translateX(this.moveVector.x * moveMult);
	this.object.translateY(this.moveVector.y * moveMult);
	this.object.translateZ(this.moveVector.z * moveMult);

	this.tmpQuaternion.set(
		this.rotationVector.x * rotMult,
		this.rotationVector.y * rotMult,
		this.rotationVector.z * rotMult,
		1
	).normalize();
	this.object.quaternion.multiply(this.tmpQuaternion);

	// expose the rotation vector for convenience
	this.object.rotation.setFromQuaternion(this.object.quaternion, this.object.rotation.order);
}

updateMovementVector(): void {
	const forward = (this.moveState.forward || (this.autoForward && !this.moveState.back)) ? 1 : 0;

	this.moveVector.x = (-this.moveState.left + this.moveState.right);
	this.moveVector.y = (-this.moveState.down + this.moveState.up);
	this.moveVector.z = (-forward + this.moveState.back);
}

updateRotationVector(): void {
	this.rotationVector.x = (-this.moveState.pitchDown + this.moveState.pitchUp);
	this.rotationVector.y = (-this.moveState.yawRight + this.moveState.yawLeft);
	this.rotationVector.z = (-this.moveState.rollRight + this.moveState.rollLeft);
}

getContainerDimensions(): ContainerDimensions {
	if (this.domElement !== document) {
		const el = this.domElement as HTMLElement;
		return {
			size: [el.offsetWidth, el.offsetHeight],
			offset: [el.offsetLeft, el.offsetTop]
		};
	} else {
		return {
			size: [window.innerWidth, window.innerHeight],
			offset: [0, 0]
		};
	}
}

dispose(): void {
	this.domElement.removeEventListener('contextmenu', this._contextmenu, false);
	this.domElement.removeEventListener('mousedown', this._mousedown as EventListener, false);
this.domElement.removeEventListener('mousemove', this._mousemove as EventListener, false);
this.domElement.removeEventListener('mouseup', this._mouseup as EventListener, false);

window.removeEventListener('keydown', this._keydown, false);
window.removeEventListener('keyup', this._keyup, false);
}
}
