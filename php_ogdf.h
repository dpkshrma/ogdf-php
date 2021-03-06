/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.5
 *
 * This file is not intended to be easily readable and contains a number of
 * coding conventions designed to improve portability and efficiency. Do not make
 * changes to this file unless you know what you are doing--modify the SWIG
 * interface file instead.
 * ----------------------------------------------------------------------------- */

#ifndef PHP_OGDF_H
#define PHP_OGDF_H

extern zend_module_entry ogdf_module_entry;
#define phpext_ogdf_ptr &ogdf_module_entry

#ifdef PHP_WIN32
# define PHP_OGDF_API __declspec(dllexport)
#else
# define PHP_OGDF_API
#endif

#ifdef ZTS
#include "TSRM.h"
#endif

PHP_MINIT_FUNCTION(ogdf);
PHP_MSHUTDOWN_FUNCTION(ogdf);
PHP_RINIT_FUNCTION(ogdf);
PHP_RSHUTDOWN_FUNCTION(ogdf);
PHP_MINFO_FUNCTION(ogdf);

ZEND_NAMED_FUNCTION(_wrap_IntListIterator_valid);
ZEND_NAMED_FUNCTION(_wrap_IntListIterator_ListIteratorEqualsEquals);
ZEND_NAMED_FUNCTION(_wrap_IntListIterator_ListIteratorNotEquals);
ZEND_NAMED_FUNCTION(_wrap_IntListIterator_succ);
ZEND_NAMED_FUNCTION(_wrap_IntListIterator_pred);
ZEND_NAMED_FUNCTION(_wrap_IntListIterator_get_val);
ZEND_NAMED_FUNCTION(_wrap_IntListIterator_set_val);
ZEND_NAMED_FUNCTION(_wrap_IntListIterator_inc);
ZEND_NAMED_FUNCTION(_wrap_IntListIterator_dec);
ZEND_NAMED_FUNCTION(_wrap_IntListIterator_eq);
ZEND_NAMED_FUNCTION(_wrap_new_IntListIterator);
ZEND_NAMED_FUNCTION(_wrap_new_c_List);
ZEND_NAMED_FUNCTION(_wrap_IntList_c_empty);
ZEND_NAMED_FUNCTION(_wrap_IntList_size);
ZEND_NAMED_FUNCTION(_wrap_IntList_front);
ZEND_NAMED_FUNCTION(_wrap_IntList_back);
ZEND_NAMED_FUNCTION(_wrap_IntList_get);
ZEND_NAMED_FUNCTION(_wrap_IntList_pos);
ZEND_NAMED_FUNCTION(_wrap_IntList_begin);
ZEND_NAMED_FUNCTION(_wrap_IntList_end);
ZEND_NAMED_FUNCTION(_wrap_IntList_rbegin);
ZEND_NAMED_FUNCTION(_wrap_IntList_rend);
ZEND_NAMED_FUNCTION(_wrap_IntList_cyclicPred);
ZEND_NAMED_FUNCTION(_wrap_IntList_cyclicSucc);
ZEND_NAMED_FUNCTION(_wrap_IntList_ListEqualsEquals);
ZEND_NAMED_FUNCTION(_wrap_IntList_ListNotEquals);
ZEND_NAMED_FUNCTION(_wrap_IntList_pushFront);
ZEND_NAMED_FUNCTION(_wrap_IntList_pushBack);
ZEND_NAMED_FUNCTION(_wrap_IntList_insert);
ZEND_NAMED_FUNCTION(_wrap_IntList_insertBefore);
ZEND_NAMED_FUNCTION(_wrap_IntList_insertAfter);
ZEND_NAMED_FUNCTION(_wrap_IntList_popFront);
ZEND_NAMED_FUNCTION(_wrap_IntList_popFrontRet);
ZEND_NAMED_FUNCTION(_wrap_IntList_popBack);
ZEND_NAMED_FUNCTION(_wrap_IntList_popBackRet);
ZEND_NAMED_FUNCTION(_wrap_IntList__del);
ZEND_NAMED_FUNCTION(_wrap_IntList_removeFirst);
ZEND_NAMED_FUNCTION(_wrap_IntList_clear);
ZEND_NAMED_FUNCTION(_wrap_IntList_exchange);
ZEND_NAMED_FUNCTION(_wrap_IntList_moveToFront);
ZEND_NAMED_FUNCTION(_wrap_IntList_moveToBack);
ZEND_NAMED_FUNCTION(_wrap_IntList_moveToSucc);
ZEND_NAMED_FUNCTION(_wrap_IntList_moveToPrec);
ZEND_NAMED_FUNCTION(_wrap_IntList_conc);
ZEND_NAMED_FUNCTION(_wrap_IntList_concFront);
ZEND_NAMED_FUNCTION(_wrap_IntList_reverse);
ZEND_NAMED_FUNCTION(_wrap_IntList_quicksort);
ZEND_NAMED_FUNCTION(_wrap_IntList_permute);
ZEND_NAMED_FUNCTION(_wrap_IntList_search);
ZEND_NAMED_FUNCTION(_wrap_IntList_chooseIterator);
ZEND_NAMED_FUNCTION(_wrap_IntList_chooseElement);
ZEND_NAMED_FUNCTION(_wrap_AdjElement_theEdge);
ZEND_NAMED_FUNCTION(_wrap_AdjElement_theNode);
ZEND_NAMED_FUNCTION(_wrap_AdjElement_twin);
ZEND_NAMED_FUNCTION(_wrap_AdjElement_twinNode);
ZEND_NAMED_FUNCTION(_wrap_AdjElement_index);
ZEND_NAMED_FUNCTION(_wrap_AdjElement_clockwiseFaceSucc);
ZEND_NAMED_FUNCTION(_wrap_AdjElement_clockwiseFacePred);
ZEND_NAMED_FUNCTION(_wrap_AdjElement_counterClockwiseFaceSucc);
ZEND_NAMED_FUNCTION(_wrap_AdjElement_counterClockwiseFacePred);
ZEND_NAMED_FUNCTION(_wrap_AdjElement_faceCycleSucc);
ZEND_NAMED_FUNCTION(_wrap_AdjElement_faceCyclePred);
ZEND_NAMED_FUNCTION(_wrap_AdjElement_succ);
ZEND_NAMED_FUNCTION(_wrap_AdjElement_pred);
ZEND_NAMED_FUNCTION(_wrap_AdjElement_cyclicSucc);
ZEND_NAMED_FUNCTION(_wrap_AdjElement_cyclicPred);
ZEND_NAMED_FUNCTION(_wrap_AdjElement_compare);
ZEND_NAMED_FUNCTION(_wrap_NodeElement_index);
ZEND_NAMED_FUNCTION(_wrap_NodeElement_indeg);
ZEND_NAMED_FUNCTION(_wrap_NodeElement_outdeg);
ZEND_NAMED_FUNCTION(_wrap_NodeElement_degree);
ZEND_NAMED_FUNCTION(_wrap_NodeElement_firstAdj);
ZEND_NAMED_FUNCTION(_wrap_NodeElement_lastAdj);
ZEND_NAMED_FUNCTION(_wrap_NodeElement_succ);
ZEND_NAMED_FUNCTION(_wrap_NodeElement_pred);
ZEND_NAMED_FUNCTION(_wrap_NodeElement_compare);
ZEND_NAMED_FUNCTION(_wrap_EdgeElement_index);
ZEND_NAMED_FUNCTION(_wrap_EdgeElement_source);
ZEND_NAMED_FUNCTION(_wrap_EdgeElement_target);
ZEND_NAMED_FUNCTION(_wrap_EdgeElement_adjSource);
ZEND_NAMED_FUNCTION(_wrap_EdgeElement_adjTarget);
ZEND_NAMED_FUNCTION(_wrap_EdgeElement_opposite);
ZEND_NAMED_FUNCTION(_wrap_EdgeElement_isSelfLoop);
ZEND_NAMED_FUNCTION(_wrap_EdgeElement_succ);
ZEND_NAMED_FUNCTION(_wrap_EdgeElement_pred);
ZEND_NAMED_FUNCTION(_wrap_EdgeElement_isIncident);
ZEND_NAMED_FUNCTION(_wrap_EdgeElement_commonNode);
ZEND_NAMED_FUNCTION(_wrap_EdgeElement_compare);
ZEND_NAMED_FUNCTION(_wrap_new_Graph);
ZEND_NAMED_FUNCTION(_wrap_Graph_c_empty);
ZEND_NAMED_FUNCTION(_wrap_Graph_numberOfNodes);
ZEND_NAMED_FUNCTION(_wrap_Graph_numberOfEdges);
ZEND_NAMED_FUNCTION(_wrap_Graph_maxNodeIndex);
ZEND_NAMED_FUNCTION(_wrap_Graph_maxEdgeIndex);
ZEND_NAMED_FUNCTION(_wrap_Graph_maxAdjEntryIndex);
ZEND_NAMED_FUNCTION(_wrap_Graph_nodeArrayTableSize);
ZEND_NAMED_FUNCTION(_wrap_Graph_edgeArrayTableSize);
ZEND_NAMED_FUNCTION(_wrap_Graph_adjEntryArrayTableSize);
ZEND_NAMED_FUNCTION(_wrap_Graph_firstNode);
ZEND_NAMED_FUNCTION(_wrap_Graph_lastNode);
ZEND_NAMED_FUNCTION(_wrap_Graph_firstEdge);
ZEND_NAMED_FUNCTION(_wrap_Graph_lastEdge);
ZEND_NAMED_FUNCTION(_wrap_Graph_chooseNode);
ZEND_NAMED_FUNCTION(_wrap_Graph_chooseEdge);
ZEND_NAMED_FUNCTION(_wrap_Graph_allNodes);
ZEND_NAMED_FUNCTION(_wrap_Graph_allEdges);
ZEND_NAMED_FUNCTION(_wrap_Graph_adjEdges);
ZEND_NAMED_FUNCTION(_wrap_Graph_adjEntries);
ZEND_NAMED_FUNCTION(_wrap_Graph_inEdges);
ZEND_NAMED_FUNCTION(_wrap_Graph_outEdges);
ZEND_NAMED_FUNCTION(_wrap_Graph_newNode);
ZEND_NAMED_FUNCTION(_wrap_Graph_newEdge);
ZEND_NAMED_FUNCTION(_wrap_Graph_delNode);
ZEND_NAMED_FUNCTION(_wrap_Graph_delEdge);
ZEND_NAMED_FUNCTION(_wrap_Graph_clear);
ZEND_NAMED_FUNCTION(_wrap_Graph_hideEdge);
ZEND_NAMED_FUNCTION(_wrap_Graph_restoreEdge);
ZEND_NAMED_FUNCTION(_wrap_Graph_restoreAllEdges);
ZEND_NAMED_FUNCTION(_wrap_Graph_split);
ZEND_NAMED_FUNCTION(_wrap_Graph_unsplit);
ZEND_NAMED_FUNCTION(_wrap_Graph_splitNode);
ZEND_NAMED_FUNCTION(_wrap_Graph_contract);
ZEND_NAMED_FUNCTION(_wrap_Graph_move);
ZEND_NAMED_FUNCTION(_wrap_Graph_moveTarget);
ZEND_NAMED_FUNCTION(_wrap_Graph_moveSource);
ZEND_NAMED_FUNCTION(_wrap_Graph_searchEdge);
ZEND_NAMED_FUNCTION(_wrap_Graph_reverseEdge);
ZEND_NAMED_FUNCTION(_wrap_Graph_reverseAllEdges);
ZEND_NAMED_FUNCTION(_wrap_Graph_collaps);
ZEND_NAMED_FUNCTION(_wrap_Graph_sort);
ZEND_NAMED_FUNCTION(_wrap_Graph_moveAdj);
ZEND_NAMED_FUNCTION(_wrap_Graph_moveAdjAfter);
ZEND_NAMED_FUNCTION(_wrap_Graph_moveAdjBefore);
ZEND_NAMED_FUNCTION(_wrap_Graph_reverseAdjEdges);
ZEND_NAMED_FUNCTION(_wrap_Graph_swapAdjEdges);
ZEND_NAMED_FUNCTION(_wrap_Graph_genus);
ZEND_NAMED_FUNCTION(_wrap_Graph_representsCombEmbedding);
ZEND_NAMED_FUNCTION(_wrap_Graph_consistencyCheck);
ZEND_NAMED_FUNCTION(_wrap_Graph_resetEdgeIdCount);
ZEND_NAMED_FUNCTION(_wrap_Graph_nextPower2);
ZEND_NAMED_FUNCTION(_wrap_new_IntNodeArray);
ZEND_NAMED_FUNCTION(_wrap_IntNodeArray_valid);
ZEND_NAMED_FUNCTION(_wrap_IntNodeArray_graphOf);
ZEND_NAMED_FUNCTION(_wrap_IntNodeArray_init);
ZEND_NAMED_FUNCTION(_wrap_IntNodeArray_fill);
ZEND_NAMED_FUNCTION(_wrap_IntNodeArray_get_val);
ZEND_NAMED_FUNCTION(_wrap_IntNodeArray_set_val);
ZEND_NAMED_FUNCTION(_wrap_new_LongNodeArray);
ZEND_NAMED_FUNCTION(_wrap_LongNodeArray_valid);
ZEND_NAMED_FUNCTION(_wrap_LongNodeArray_graphOf);
ZEND_NAMED_FUNCTION(_wrap_LongNodeArray_init);
ZEND_NAMED_FUNCTION(_wrap_LongNodeArray_fill);
ZEND_NAMED_FUNCTION(_wrap_LongNodeArray_get_val);
ZEND_NAMED_FUNCTION(_wrap_LongNodeArray_set_val);
ZEND_NAMED_FUNCTION(_wrap_new_FloatNodeArray);
ZEND_NAMED_FUNCTION(_wrap_FloatNodeArray_valid);
ZEND_NAMED_FUNCTION(_wrap_FloatNodeArray_graphOf);
ZEND_NAMED_FUNCTION(_wrap_FloatNodeArray_init);
ZEND_NAMED_FUNCTION(_wrap_FloatNodeArray_fill);
ZEND_NAMED_FUNCTION(_wrap_FloatNodeArray_get_val);
ZEND_NAMED_FUNCTION(_wrap_FloatNodeArray_set_val);
ZEND_NAMED_FUNCTION(_wrap_new_DoubleNodeArray);
ZEND_NAMED_FUNCTION(_wrap_DoubleNodeArray_valid);
ZEND_NAMED_FUNCTION(_wrap_DoubleNodeArray_graphOf);
ZEND_NAMED_FUNCTION(_wrap_DoubleNodeArray_init);
ZEND_NAMED_FUNCTION(_wrap_DoubleNodeArray_fill);
ZEND_NAMED_FUNCTION(_wrap_DoubleNodeArray_get_val);
ZEND_NAMED_FUNCTION(_wrap_DoubleNodeArray_set_val);
ZEND_NAMED_FUNCTION(_wrap_new_IntEdgeArray);
ZEND_NAMED_FUNCTION(_wrap_IntEdgeArray_valid);
ZEND_NAMED_FUNCTION(_wrap_IntEdgeArray_graphOf);
ZEND_NAMED_FUNCTION(_wrap_IntEdgeArray_init);
ZEND_NAMED_FUNCTION(_wrap_IntEdgeArray_fill);
ZEND_NAMED_FUNCTION(_wrap_IntEdgeArray_get_val);
ZEND_NAMED_FUNCTION(_wrap_IntEdgeArray_set_val);
ZEND_NAMED_FUNCTION(_wrap_new_LongEdgeArray);
ZEND_NAMED_FUNCTION(_wrap_LongEdgeArray_valid);
ZEND_NAMED_FUNCTION(_wrap_LongEdgeArray_graphOf);
ZEND_NAMED_FUNCTION(_wrap_LongEdgeArray_init);
ZEND_NAMED_FUNCTION(_wrap_LongEdgeArray_fill);
ZEND_NAMED_FUNCTION(_wrap_LongEdgeArray_get_val);
ZEND_NAMED_FUNCTION(_wrap_LongEdgeArray_set_val);
ZEND_NAMED_FUNCTION(_wrap_new_FloatEdgeArray);
ZEND_NAMED_FUNCTION(_wrap_FloatEdgeArray_valid);
ZEND_NAMED_FUNCTION(_wrap_FloatEdgeArray_graphOf);
ZEND_NAMED_FUNCTION(_wrap_FloatEdgeArray_init);
ZEND_NAMED_FUNCTION(_wrap_FloatEdgeArray_fill);
ZEND_NAMED_FUNCTION(_wrap_FloatEdgeArray_get_val);
ZEND_NAMED_FUNCTION(_wrap_FloatEdgeArray_set_val);
ZEND_NAMED_FUNCTION(_wrap_new_DoubleEdgeArray);
ZEND_NAMED_FUNCTION(_wrap_DoubleEdgeArray_valid);
ZEND_NAMED_FUNCTION(_wrap_DoubleEdgeArray_graphOf);
ZEND_NAMED_FUNCTION(_wrap_DoubleEdgeArray_init);
ZEND_NAMED_FUNCTION(_wrap_DoubleEdgeArray_fill);
ZEND_NAMED_FUNCTION(_wrap_DoubleEdgeArray_get_val);
ZEND_NAMED_FUNCTION(_wrap_DoubleEdgeArray_set_val);
ZEND_NAMED_FUNCTION(_wrap_MultilevelBuilder_setEdgeLengthAdjustment);
ZEND_NAMED_FUNCTION(_wrap_MultilevelBuilder_getNumLevels);
ZEND_NAMED_FUNCTION(_wrap_new_EdgeCoverMerger);
ZEND_NAMED_FUNCTION(_wrap_EdgeCoverMerger_setFactor);
ZEND_NAMED_FUNCTION(_wrap_IndependentSetMerger_setSearchDepthBase);
ZEND_NAMED_FUNCTION(_wrap_new_IndependentSetMerger);
ZEND_NAMED_FUNCTION(_wrap_LocalBiconnectedMerger_setFactor);
ZEND_NAMED_FUNCTION(_wrap_MatchingMerger_selectByNodeMass);
ZEND_NAMED_FUNCTION(_wrap_RandomMerger_setFactor);
ZEND_NAMED_FUNCTION(_wrap_new_SolarMerger);
ZEND_NAMED_FUNCTION(_wrap_InitialPlacer_setRandomOffset);
ZEND_NAMED_FUNCTION(_wrap_RandomPlacer_setCircleSize);
ZEND_NAMED_FUNCTION(_wrap_CirclePlacer_setRadiusFixed);
ZEND_NAMED_FUNCTION(_wrap_CirclePlacer_setCircleSize);
ZEND_NAMED_FUNCTION(_wrap_CirclePlacer_setNodeSelection);
ZEND_NAMED_FUNCTION(_wrap_ZeroPlacer_setRandomRange);
ZEND_NAMED_FUNCTION(_wrap_BarycenterPlacer_weightedPositionPriority);
ZEND_NAMED_FUNCTION(_wrap_FastHierarchyLayout_nodeDistance);
ZEND_NAMED_FUNCTION(_wrap_FastHierarchyLayout_layerDistance);
ZEND_NAMED_FUNCTION(_wrap_FastHierarchyLayout_fixedLayerDistance);
ZEND_NAMED_FUNCTION(_wrap_FastSimpleHierarchyLayout_nodeDistance);
ZEND_NAMED_FUNCTION(_wrap_FastSimpleHierarchyLayout_layerDistance);
ZEND_NAMED_FUNCTION(_wrap_FastSimpleHierarchyLayout_downward);
ZEND_NAMED_FUNCTION(_wrap_FastSimpleHierarchyLayout_leftToRight);
ZEND_NAMED_FUNCTION(_wrap_FastSimpleHierarchyLayout_balanced);
ZEND_NAMED_FUNCTION(_wrap_OptimalHierarchyLayout_nodeDistance);
ZEND_NAMED_FUNCTION(_wrap_OptimalHierarchyLayout_layerDistance);
ZEND_NAMED_FUNCTION(_wrap_OptimalHierarchyLayout_fixedLayerDistance);
ZEND_NAMED_FUNCTION(_wrap_OptimalHierarchyLayout_weightSegments);
ZEND_NAMED_FUNCTION(_wrap_OptimalHierarchyLayout_weightBalancing);
ZEND_NAMED_FUNCTION(_wrap_OptimalRanking_separateMultiEdges);
ZEND_NAMED_FUNCTION(_wrap_OptimalRanking_setSubgraph);
ZEND_NAMED_FUNCTION(_wrap_LongestPathRanking_separateDeg0Layer);
ZEND_NAMED_FUNCTION(_wrap_LongestPathRanking_separateMultiEdges);
ZEND_NAMED_FUNCTION(_wrap_LongestPathRanking_optimizeEdgeLength);
ZEND_NAMED_FUNCTION(_wrap_LongestPathRanking_alignBaseClasses);
ZEND_NAMED_FUNCTION(_wrap_LongestPathRanking_alignSiblings);
ZEND_NAMED_FUNCTION(_wrap_LongestPathRanking_setSubgraph);
ZEND_NAMED_FUNCTION(_wrap_CoffmanGrahamRanking_setSubgraph);
ZEND_NAMED_FUNCTION(_wrap_CoffmanGrahamRanking_width);
ZEND_NAMED_FUNCTION(_wrap_GlobalSifting_nRepeats);
ZEND_NAMED_FUNCTION(_wrap_GridSifting_verticalStepsBound);
ZEND_NAMED_FUNCTION(_wrap_FastPlanarSubgraph_runs);
ZEND_NAMED_FUNCTION(_wrap_FixedEmbeddingInserter_removeReinsert);
ZEND_NAMED_FUNCTION(_wrap_FixedEmbeddingInserter_percentMostCrossed);
ZEND_NAMED_FUNCTION(_wrap_FixedEmbeddingInserter_keepEmbedding);
ZEND_NAMED_FUNCTION(_wrap_VariableEmbeddingInserter_removeReinsert);
ZEND_NAMED_FUNCTION(_wrap_VariableEmbeddingInserter_percentMostCrossed);
ZEND_NAMED_FUNCTION(_wrap_MultiEdgeApproxInserter_removeReinsertFix);
ZEND_NAMED_FUNCTION(_wrap_MultiEdgeApproxInserter_removeReinsertVar);
ZEND_NAMED_FUNCTION(_wrap_MultiEdgeApproxInserter_percentMostCrossedFix);
ZEND_NAMED_FUNCTION(_wrap_MultiEdgeApproxInserter_percentMostCrossedVar);
ZEND_NAMED_FUNCTION(_wrap_MultiEdgeApproxInserter_statistics);
ZEND_NAMED_FUNCTION(_wrap_VariableEmbeddingInserterDyn_removeReinsert);
ZEND_NAMED_FUNCTION(_wrap_VariableEmbeddingInserterDyn_percentMostCrossed);
ZEND_NAMED_FUNCTION(_wrap_OrthoLayout_separation);
ZEND_NAMED_FUNCTION(_wrap_OrthoLayout_cOverhang);
ZEND_NAMED_FUNCTION(_wrap_OrthoLayout_margin);
ZEND_NAMED_FUNCTION(_wrap_OrthoLayout_progressive);
ZEND_NAMED_FUNCTION(_wrap_OrthoLayout_scaling);
ZEND_NAMED_FUNCTION(_wrap_OrthoLayout_bendBound);
ZEND_NAMED_FUNCTION(_wrap_intToStrokeType);
ZEND_NAMED_FUNCTION(_wrap_intToFillPattern);
ZEND_NAMED_FUNCTION(_wrap_new_Color);
ZEND_NAMED_FUNCTION(_wrap_Color_red);
ZEND_NAMED_FUNCTION(_wrap_Color_green);
ZEND_NAMED_FUNCTION(_wrap_Color_blue);
ZEND_NAMED_FUNCTION(_wrap_Color_alpha);
ZEND_NAMED_FUNCTION(_wrap_Color_toString);
ZEND_NAMED_FUNCTION(_wrap_Color_fromString);
ZEND_NAMED_FUNCTION(_wrap_Color___notequals__);
ZEND_NAMED_FUNCTION(_wrap_Stroke_m_color_set);
ZEND_NAMED_FUNCTION(_wrap_Stroke_m_color_get);
ZEND_NAMED_FUNCTION(_wrap_Stroke_m_width_set);
ZEND_NAMED_FUNCTION(_wrap_Stroke_m_width_get);
ZEND_NAMED_FUNCTION(_wrap_Stroke_m_type_set);
ZEND_NAMED_FUNCTION(_wrap_Stroke_m_type_get);
ZEND_NAMED_FUNCTION(_wrap_Stroke_m_cap_set);
ZEND_NAMED_FUNCTION(_wrap_Stroke_m_cap_get);
ZEND_NAMED_FUNCTION(_wrap_Stroke_m_join_set);
ZEND_NAMED_FUNCTION(_wrap_Stroke_m_join_get);
ZEND_NAMED_FUNCTION(_wrap_new_Stroke);
ZEND_NAMED_FUNCTION(_wrap_Fill_m_color_set);
ZEND_NAMED_FUNCTION(_wrap_Fill_m_color_get);
ZEND_NAMED_FUNCTION(_wrap_Fill_m_bgColor_set);
ZEND_NAMED_FUNCTION(_wrap_Fill_m_bgColor_get);
ZEND_NAMED_FUNCTION(_wrap_Fill_m_pattern_set);
ZEND_NAMED_FUNCTION(_wrap_Fill_m_pattern_get);
ZEND_NAMED_FUNCTION(_wrap_new_Fill);
ZEND_NAMED_FUNCTION(_wrap_new_GraphAttributes);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_attributes);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_init);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_initAttributes);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_destroyAttributes);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_constGraph);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_directed);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_setDirected);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_x);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_setX);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_y);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_setY);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_z);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_setZ);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_height);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_setHeight);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_width);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_setWidth);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_shape);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_setShape);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_fillPattern);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_setFillPattern);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_fillColor);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_setFillColor);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_fillBgColor);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_setFillBgColor);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_templateNode);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_setTemplateNode);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_weight);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_setWeight);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_idNode);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_setIdNode);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_bends);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_setBends);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_arrowType);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_setArrowType);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_strokeType);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_setStrokeType);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_strokeColor);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_setStrokeColor);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_strokeWidth);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_setStrokeWidth);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_label);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_setLabel);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_intWeight);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_setIntWeight);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_doubleWeight);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_setDoubleWeight);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes__type);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_setType);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_subGraphBits);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_setSubGraphBits);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_inSubGraph);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_addSubGraph);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_removeSubGraph);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_boundingBox);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_setAllWidth);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_setAllHeight);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_clearAllBends);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_removeUnnecessaryBendsHV);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_addNodeCenter2Bends);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_isAssociationClass);
ZEND_NAMED_FUNCTION(_wrap_GraphAttributes_hierarchyList);
ZEND_NAMED_FUNCTION(_wrap_new_GEMLayout);
ZEND_NAMED_FUNCTION(_wrap_GEMLayout_call);
ZEND_NAMED_FUNCTION(_wrap_GEMLayout_numberOfRounds);
ZEND_NAMED_FUNCTION(_wrap_GEMLayout_minimalTemperature);
ZEND_NAMED_FUNCTION(_wrap_GEMLayout_initialTemperature);
ZEND_NAMED_FUNCTION(_wrap_GEMLayout_gravitationalConstant);
ZEND_NAMED_FUNCTION(_wrap_GEMLayout_desiredLength);
ZEND_NAMED_FUNCTION(_wrap_GEMLayout_maximalDisturbance);
ZEND_NAMED_FUNCTION(_wrap_GEMLayout_rotationAngle);
ZEND_NAMED_FUNCTION(_wrap_GEMLayout_oscillationAngle);
ZEND_NAMED_FUNCTION(_wrap_GEMLayout_rotationSensitivity);
ZEND_NAMED_FUNCTION(_wrap_GEMLayout_oscillationSensitivity);
ZEND_NAMED_FUNCTION(_wrap_GEMLayout_attractionFormula);
ZEND_NAMED_FUNCTION(_wrap_GEMLayout_minDistCC);
ZEND_NAMED_FUNCTION(_wrap_GEMLayout_pageRatio);
ZEND_NAMED_FUNCTION(_wrap_new_FMMMLayout);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_call);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_getCpuTime);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_useHighLevelOptions);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_setSingleLevel);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_pageFormat);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_unitEdgeLength);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_newInitialPlacement);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_qualityVersusSpeed);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_randSeed);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_edgeLengthMeasurement);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_allowedPositions);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_maxIntPosExponent);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_pageRatio);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_stepsForRotatingComponents);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_tipOverCCs);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_minDistCC);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_presortCCs);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_minGraphSize);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_galaxyChoice);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_randomTries);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_maxIterChange);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_maxIterFactor);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_initialPlacementMult);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_forceModel);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_springStrength);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_repForcesStrength);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_repulsiveForcesCalculation);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_stopCriterion);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_threshold);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_fixedIterations);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_forceScalingFactor);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_coolTemperature);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_coolValue);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_initialPlacementForces);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_resizeDrawing);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_resizingScalar);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_fineTuningIterations);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_fineTuneScalar);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_adjustPostRepStrengthDynamically);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_postSpringStrength);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_postStrengthOfRepForces);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_frGridQuotient);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_nmTreeConstruction);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_nmSmallCell);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_nmParticlesInLeaves);
ZEND_NAMED_FUNCTION(_wrap_FMMMLayout_nmPrecision);
ZEND_NAMED_FUNCTION(_wrap_new_DavidsonHarelLayout);
ZEND_NAMED_FUNCTION(_wrap_DavidsonHarelLayout_call);
ZEND_NAMED_FUNCTION(_wrap_DavidsonHarelLayout_fixSettings);
ZEND_NAMED_FUNCTION(_wrap_DavidsonHarelLayout_setSpeed);
ZEND_NAMED_FUNCTION(_wrap_DavidsonHarelLayout_setPreferredEdgeLengthMultiplier);
ZEND_NAMED_FUNCTION(_wrap_DavidsonHarelLayout_setPreferredEdgeLength);
ZEND_NAMED_FUNCTION(_wrap_DavidsonHarelLayout_setRepulsionWeight);
ZEND_NAMED_FUNCTION(_wrap_DavidsonHarelLayout_getRepulsionWeight);
ZEND_NAMED_FUNCTION(_wrap_DavidsonHarelLayout_setAttractionWeight);
ZEND_NAMED_FUNCTION(_wrap_DavidsonHarelLayout_getAttractionWeight);
ZEND_NAMED_FUNCTION(_wrap_DavidsonHarelLayout_setNodeOverlapWeight);
ZEND_NAMED_FUNCTION(_wrap_DavidsonHarelLayout_getNodeOverlapWeight);
ZEND_NAMED_FUNCTION(_wrap_DavidsonHarelLayout_setPlanarityWeight);
ZEND_NAMED_FUNCTION(_wrap_DavidsonHarelLayout_getPlanarityWeight);
ZEND_NAMED_FUNCTION(_wrap_DavidsonHarelLayout_setStartTemperature);
ZEND_NAMED_FUNCTION(_wrap_DavidsonHarelLayout_getStartTemperature);
ZEND_NAMED_FUNCTION(_wrap_DavidsonHarelLayout_setNumberOfIterations);
ZEND_NAMED_FUNCTION(_wrap_DavidsonHarelLayout_getNumberOfIterations);
ZEND_NAMED_FUNCTION(_wrap_DavidsonHarelLayout_setIterationNumberAsFactor);
ZEND_NAMED_FUNCTION(_wrap_new_TutteLayout);
ZEND_NAMED_FUNCTION(_wrap_TutteLayout_bbox);
ZEND_NAMED_FUNCTION(_wrap_TutteLayout_call);
ZEND_NAMED_FUNCTION(_wrap_new_TreeLayout);
ZEND_NAMED_FUNCTION(_wrap_TreeLayout_call);
ZEND_NAMED_FUNCTION(_wrap_TreeLayout_siblingDistance);
ZEND_NAMED_FUNCTION(_wrap_TreeLayout_subtreeDistance);
ZEND_NAMED_FUNCTION(_wrap_TreeLayout_levelDistance);
ZEND_NAMED_FUNCTION(_wrap_TreeLayout_treeDistance);
ZEND_NAMED_FUNCTION(_wrap_TreeLayout_orthogonalLayout);
ZEND_NAMED_FUNCTION(_wrap_TreeLayout_orientation);
ZEND_NAMED_FUNCTION(_wrap_TreeLayout_rootSelection);
ZEND_NAMED_FUNCTION(_wrap_new_RadialTreeLayout);
ZEND_NAMED_FUNCTION(_wrap_RadialTreeLayout_call);
ZEND_NAMED_FUNCTION(_wrap_RadialTreeLayout_levelDistance);
ZEND_NAMED_FUNCTION(_wrap_RadialTreeLayout_connectedComponentDistance);
ZEND_NAMED_FUNCTION(_wrap_RadialTreeLayout_rootSelection);
ZEND_NAMED_FUNCTION(_wrap_new_CircularLayout);
ZEND_NAMED_FUNCTION(_wrap_CircularLayout_call);
ZEND_NAMED_FUNCTION(_wrap_CircularLayout_minDistCircle);
ZEND_NAMED_FUNCTION(_wrap_CircularLayout_minDistLevel);
ZEND_NAMED_FUNCTION(_wrap_CircularLayout_minDistSibling);
ZEND_NAMED_FUNCTION(_wrap_CircularLayout_minDistCC);
ZEND_NAMED_FUNCTION(_wrap_CircularLayout_pageRatio);
ZEND_NAMED_FUNCTION(_wrap_new_BalloonLayout);
ZEND_NAMED_FUNCTION(_wrap_BalloonLayout_call);
ZEND_NAMED_FUNCTION(_wrap_BalloonLayout_setEvenAngles);
ZEND_NAMED_FUNCTION(_wrap_new_PlanarizationLayout);
ZEND_NAMED_FUNCTION(_wrap_PlanarizationLayout_call);
ZEND_NAMED_FUNCTION(_wrap_PlanarizationLayout_pageRatio);
ZEND_NAMED_FUNCTION(_wrap_PlanarizationLayout_minCliqueSize);
ZEND_NAMED_FUNCTION(_wrap_PlanarizationLayout_setCrossMin);
ZEND_NAMED_FUNCTION(_wrap_PlanarizationLayout_setEmbedder);
ZEND_NAMED_FUNCTION(_wrap_PlanarizationLayout_setPlanarLayouter);
ZEND_NAMED_FUNCTION(_wrap_PlanarizationLayout_setPacker);
ZEND_NAMED_FUNCTION(_wrap_new_SugiyamaLayout);
ZEND_NAMED_FUNCTION(_wrap_SugiyamaLayout_call);
ZEND_NAMED_FUNCTION(_wrap_SugiyamaLayout_fails);
ZEND_NAMED_FUNCTION(_wrap_SugiyamaLayout_runs);
ZEND_NAMED_FUNCTION(_wrap_SugiyamaLayout_transpose);
ZEND_NAMED_FUNCTION(_wrap_SugiyamaLayout_arrangeCCs);
ZEND_NAMED_FUNCTION(_wrap_SugiyamaLayout_minDistCC);
ZEND_NAMED_FUNCTION(_wrap_SugiyamaLayout_pageRatio);
ZEND_NAMED_FUNCTION(_wrap_SugiyamaLayout_alignBaseClasses);
ZEND_NAMED_FUNCTION(_wrap_SugiyamaLayout_alignSiblings);
ZEND_NAMED_FUNCTION(_wrap_SugiyamaLayout_permuteFirst);
ZEND_NAMED_FUNCTION(_wrap_SugiyamaLayout_maxThreads);
ZEND_NAMED_FUNCTION(_wrap_SugiyamaLayout_setRanking);
ZEND_NAMED_FUNCTION(_wrap_SugiyamaLayout_setCrossMin);
ZEND_NAMED_FUNCTION(_wrap_SugiyamaLayout_setLayout);
ZEND_NAMED_FUNCTION(_wrap_SugiyamaLayout_setClusterLayout);
ZEND_NAMED_FUNCTION(_wrap_SugiyamaLayout_setPacker);
ZEND_NAMED_FUNCTION(_wrap_UpwardPlanarizationLayout_call);
ZEND_NAMED_FUNCTION(_wrap_DominanceLayout_call);
ZEND_NAMED_FUNCTION(_wrap_DominanceLayout_setMinGridDistance);
ZEND_NAMED_FUNCTION(_wrap_VisibilityLayout_call);
ZEND_NAMED_FUNCTION(_wrap_VisibilityLayout_setMinGridDistance);
ZEND_NAMED_FUNCTION(_wrap_new_SVGSettings);
ZEND_NAMED_FUNCTION(_wrap_SVGSettings_margin);
ZEND_NAMED_FUNCTION(_wrap_SVGSettings_fontSize);
ZEND_NAMED_FUNCTION(_wrap_SVGSettings_fontColor);
ZEND_NAMED_FUNCTION(_wrap_SVGSettings_fontFamily);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_readRome);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_writeRome);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_readLEDA);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_writeLEDA);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_readChaco);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_writeChaco);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_readPMDissGraph);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_writePMDissGraph);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_readYGraph);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_readRudy);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_writeRudy);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_readGML);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_writeGML);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_readOGML);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_writeOGML);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_readBENCH);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_readPLA);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_readChallengeGraph);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_writeChallengeGraph);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_readGraphML);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_writeGraphML);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_readDOT);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_writeDOT);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_readGEXF);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_writeGEXF);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_readGDF);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_writeGDF);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_readTLP);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_writeTLP);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_readDL);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_writeDL);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_readSTP);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_readEdgeListSubgraph);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_writeEdgeListSubgraph);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_drawSVG);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_indentChar);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_indentWidth);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_setIndentChar);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_setIndentWidth);
ZEND_NAMED_FUNCTION(_wrap_GraphIO_indent);
#endif /* PHP_OGDF_H */
