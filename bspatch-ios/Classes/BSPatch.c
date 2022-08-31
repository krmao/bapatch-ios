#include "BSPatch.h"
#include "innerbsdiff.h"
#include "innerbspatch.h"

/**
 * @return -1:失败, 0:成功
 */
int bspatch(const char *basePath, const char *syntheticPath, const char *patchPath){
    return innerBSPatch(basePath, syntheticPath, patchPath);
}


/**
 * @return -1:失败, 0:成功
 */
int bsdiff(const char *basePath, const char *syntheticPath, const char *patchPath){
    return innerBSDiff(basePath, syntheticPath, patchPath);
}
