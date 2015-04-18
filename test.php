<?php

ini_set('xdebug.var_display_max_depth', 5);
ini_set('xdebug.var_display_max_children', 1024);
ini_set('xdebug.var_display_max_data', 1024);

require "ogdf.php";
var_dump(extension_loaded('ogdf'));
var_dump(get_extension_funcs('ogdf'));
var_dump(get_loaded_extensions());

$l1 = new IntList();
$l1->c_list();
$l1->pushFront(45);
echo $l1->front()."<br>";
$l1->pushFront(64);
echo $l1->front()."<br>";
$l1->pushFront(85);
echo $l1->front()."<br>";
echo $l1->size()."<br>";
$l1->popFront();
$l1->popFront();
echo $l1->size();

$g = new Graph();

$ga = new GraphAttributes( $g, GraphAttributes::nodeGraphics |
    GraphAttributes::edgeGraphics |
    GraphAttributes::nodeLabel |
    GraphAttributes::nodeStyle |
    GraphAttributes::edgeType |
    GraphAttributes::edgeArrow |
    GraphAttributes::edgeStyle
); // Create graph attributes for this graph

var_dump($g->newNode(0));
$g->newNode(1);
$g->newEdge($g->newNode(2),$g->newNode(3));
$g->newEdge($g->newNode(4),$g->newNode(5));

$sl = new SugiyamaLayout(); //Compute a hierarchical drawing of G (using SugiyamaLayout)
$sl->call( $ga );

$ss = new SVGSettings();
$gio = new GraphIO();

// var_dump(GraphIO::drawSVG($ga,"test.svg",$ss));
var_dump(GraphIO::writeGML($ga,"new.gml"));
// var_dump($gio->writeGML($ga,"/home/deepak/Documents/vhost/testground.dev/test/test.gml"));

echo "Number of nodes and edges : ";
var_dump($g->numberOfNodes());
var_dump($g->numberOfEdges());