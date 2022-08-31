//
//  BSPatch.h
//  Pods
//
//  Created by kr.mao on 2022/8/31.
//

#ifndef BSPatch_h
#define BSPatch_h

/**
 * @return -1:失败, 0:成功
 */
int bspatch(const char *basePath, const char *syntheticPath, const char *patchPath);


/**
 * @return -1:失败, 0:成功
 */
int bsdiff(const char *basePath, const char *syntheticPath, const char *patchPath);

#endif /* BSPatch_h */
