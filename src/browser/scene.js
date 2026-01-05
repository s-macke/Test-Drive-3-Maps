import * as THREE from 'three';

"use strict";

// Disable color management to match legacy Three.js color appearance
THREE.ColorManagement.enabled = false;

function Scene() {

	this.scene = new THREE.Scene();
	this.camera = new THREE.PerspectiveCamera( 75, window.innerWidth/window.innerHeight, 0.1, 1000 );
	this.renderer = new THREE.WebGLRenderer({ antialiasing: true});
	this.clock = new THREE.Clock();
	this.renderer.setSize( window.innerWidth, window.innerHeight );
	this.renderer.setClearColor( 0x8080FF ); 
	window.addEventListener( 'resize', this.OnWindowResize.bind(this), false );
	document.body.appendChild( this.renderer.domElement );

	this.camera.position.z = 500;
	
	this.directionalLight = new THREE.DirectionalLight(0xffffff, 0.5);
	this.directionalLight.position.set( 1, 1, 1 );
	this.scene.add( this.directionalLight );

	this.ambientLight = new THREE.AmbientLight(0xffffff, 0.5);
	this.scene.add( this.ambientLight );	
}

Scene.prototype.Add = function(mesh) {
	this.scene.add(mesh);
}

Scene.prototype.RemoveAllMeshes = function() {

	for( let i = this.scene.children.length-1; i >= 0; i--)
	{
		 let obj = this.scene.children[i];
		 if (obj.type === "Mesh") this.scene.remove(obj);
		 if (obj.type === "Line") this.scene.remove(obj);
		 if (obj.type === "Object3D") this.scene.remove(obj);
	}
}

Scene.prototype.Render = function() {
	this.renderer.render(this.scene, this.camera);
}

Scene.prototype.OnWindowResize = function(event)
{
	let SCREEN_HEIGHT = window.innerHeight;
	let SCREEN_WIDTH  = window.innerWidth;
	this.renderer.setSize( SCREEN_WIDTH, SCREEN_HEIGHT );
	this.camera.aspect = SCREEN_WIDTH / SCREEN_HEIGHT;
	this.camera.updateProjectionMatrix();
	//this.composer.reset();
}

export { Scene };
