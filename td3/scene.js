import * as THREE from './three.module.js';

"use strict";

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

	this.ambientLight = new THREE.AmbientLight(0x808080);
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

Scene.prototype.BuildTestMesh = function() {
	
	let geom = new THREE.Geometry();
	let v1 = new THREE.Vector3(-1, -1, 0);
	let v2 = new THREE.Vector3( 1, -1, 0);
	let v3 = new THREE.Vector3( 1,  1, 0);
	let v4 = new THREE.Vector3(-1,  1, 0);

	geom.vertices.push(v1);
	geom.vertices.push(v2);
	geom.vertices.push(v3);
	geom.vertices.push(v4);

	geom.faces.push( new THREE.Face3( 0, 1, 2 ) );
	geom.faces.push( new THREE.Face3( 2, 3, 0 ) );

	for (let i=0; i<geom.faces.length; i++ )
	{
		let face = geom.faces[i];
		//face.color = new THREE.Color(0xFF0000);
		face.color.setHex( Math.random() * 0xffffff );
		//face.materials = [ new THREE.MeshBasicMaterial( { color: Math.random() * 0xffffff } ) ];
	}
	//let material = new THREE.MeshBasicMaterial( { color: 0xffffff, vertexColors: THREE.FaceColors } );
	//let material = new THREE.MeshLambertMaterial( { color: 0xffffff, vertexColors: THREE.FaceColors } );
	//let material = new THREE.MeshBasicMaterial( { color: 0x00ff00 } );
	//let material = new THREE.MeshFaceMaterial();
	//material.side = THREE.DoubleSide;
	geom.computeFaceNormals();
	
	let cube = new THREE.Mesh( geom, material );
	return cube;
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
