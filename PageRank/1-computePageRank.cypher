# Use anonymous projected graph so no need to clean up later.
UNWIND [20, 30, 40] AS numIter
CALL gds.pageRank.write({
    nodeProjection: 'User',
    relationshipProjection: {
        FRIEND_OF: {
            type: 'FRIENDS',
            orientation: 'UNDIRECTED'
        }
    },
    writeProperty: 'pageRank' + toString(numIter),
    maxIterations: numIter
})
YIELD ranIterations, didConverge, createMillis, computeMillis, writeMillis, nodePropertiesWritten, centralityDistribution, configuration
RETURN numIter, ranIterations, didConverge, createMillis, computeMillis, writeMillis, nodePropertiesWritten, centralityDistribution, configuration