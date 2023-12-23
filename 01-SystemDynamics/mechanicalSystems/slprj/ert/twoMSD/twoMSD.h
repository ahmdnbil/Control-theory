/*
 * File: twoMSD.h
 *
 * Code generated for Simulink model 'twoMSD'.
 *
 * Model version                  : 1.4
 * Simulink Coder version         : 9.5 (R2021a) 14-Nov-2020
 * C/C++ source code generated on : Wed Dec 20 02:18:51 2023
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Intel->x86-64 (Windows64)
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_twoMSD_h_
#define RTW_HEADER_twoMSD_h_
#ifndef twoMSD_COMMON_INCLUDES_
#define twoMSD_COMMON_INCLUDES_
#include "rtwtypes.h"
#endif                                 /* twoMSD_COMMON_INCLUDES_ */

#include "twoMSD_types.h"

/* Block states (default storage) for model 'twoMSD' */
typedef struct {
  real_T DiscreteTimeIntegrator3_DSTATE;/* '<Root>/Discrete-Time Integrator3' */
  real_T DiscreteTimeIntegrator2_DSTATE;/* '<Root>/Discrete-Time Integrator2' */
  real_T DiscreteTimeIntegrator1_DSTATE;/* '<Root>/Discrete-Time Integrator1' */
  real_T DiscreteTimeIntegrator_DSTATE;/* '<Root>/Discrete-Time Integrator' */
} DW_twoMSD_f_T;

/* Real-time Model Data Structure */
struct tag_RTM_twoMSD_T {
  const char_T **errorStatus;
};

typedef struct {
  DW_twoMSD_f_T rtdw;
  RT_MODEL_twoMSD_T rtm;
} MdlrefDW_twoMSD_T;

/* Model reference registration function */
extern void twoMSD_initialize(const char_T **rt_errorStatus, RT_MODEL_twoMSD_T *
  const twoMSD_M);
extern void twoMSD(const real_T *rtu_F, real_T *rty_x1, real_T *rty_x3,
                   DW_twoMSD_f_T *localDW);

/*-
 * The generated code includes comments that allow you to trace directly
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Use the MATLAB hilite_system command to trace the generated code back
 * to the model.  For example,
 *
 * hilite_system('<S3>')    - opens system 3
 * hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : 'twoMSD'
 */
#endif                                 /* RTW_HEADER_twoMSD_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
