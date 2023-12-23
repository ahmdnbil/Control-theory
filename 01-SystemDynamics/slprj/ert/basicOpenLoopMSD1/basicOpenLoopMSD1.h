/*
 * File: basicOpenLoopMSD1.h
 *
 * Code generated for Simulink model 'basicOpenLoopMSD1'.
 *
 * Model version                  : 1.7
 * Simulink Coder version         : 9.5 (R2021a) 14-Nov-2020
 * C/C++ source code generated on : Mon Dec 18 23:01:00 2023
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Intel->x86-64 (Windows64)
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_basicOpenLoopMSD1_h_
#define RTW_HEADER_basicOpenLoopMSD1_h_
#ifndef basicOpenLoopMSD1_COMMON_INCLUDES_
#define basicOpenLoopMSD1_COMMON_INCLUDES_
#include "rtwtypes.h"
#include "rtw_continuous.h"
#include "rtw_solver.h"
#endif                                 /* basicOpenLoopMSD1_COMMON_INCLUDES_ */

#include "basicOpenLoopMSD1_types.h"

/* Block signals for model 'basicOpenLoopMSD1' */
typedef struct {
  real_T spring;                       /* '<Root>/spring' */
  real_T speed;                        /* '<Root>/Discrete-Time Integrator1' */
  real_T maccleartion;                 /* '<Root>/Add' */
} B_basicOpenLoopMSD1_c_T;

/* Block states (default storage) for model 'basicOpenLoopMSD1' */
typedef struct {
  real_T DiscreteTimeIntegrator_DSTATE;/* '<Root>/Discrete-Time Integrator' */
  real_T DiscreteTimeIntegrator1_DSTATE;/* '<Root>/Discrete-Time Integrator1' */
  uint8_T DiscreteTimeIntegrator_IC_LOADI;/* '<Root>/Discrete-Time Integrator' */
  uint8_T DiscreteTimeIntegrator1_IC_LOAD;/* '<Root>/Discrete-Time Integrator1' */
} DW_basicOpenLoopMSD1_f_T;

/* Real-time Model Data Structure */
struct tag_RTM_basicOpenLoopMSD1_T {
  const char_T **errorStatus;
  RTWSolverInfo *solverInfo;

  /*
   * Timing:
   * The following substructure contains information regarding
   * the timing information for the model.
   */
  struct {
    time_T stepSize0;
    SimTimeStep *simTimeStep;
  } Timing;
};

typedef struct {
  B_basicOpenLoopMSD1_c_T rtb;
  DW_basicOpenLoopMSD1_f_T rtdw;
  RT_MODEL_basicOpenLoopMSD1_T rtm;
} MdlrefDW_basicOpenLoopMSD1_T;

/* Model reference registration function */
extern void basicOpenLoopMSD1_initialize(const char_T **rt_errorStatus,
  RTWSolverInfo *rt_solverInfo, RT_MODEL_basicOpenLoopMSD1_T *const
  basicOpenLoopMSD1_M);
extern void basicOpenLoopMSD1_Init(DW_basicOpenLoopMSD1_f_T *localDW);
extern void basicOpenLoopMSD1_Update(RT_MODEL_basicOpenLoopMSD1_T * const
  basicOpenLoopMSD1_M, B_basicOpenLoopMSD1_c_T *localB, DW_basicOpenLoopMSD1_f_T
  *localDW);
extern void basicOpenLoopMSD1(RT_MODEL_basicOpenLoopMSD1_T * const
  basicOpenLoopMSD1_M, const real_T *rtu_Ft, const real_T *rtu_intialSpeed,
  const real_T *rtu_intialdistance, real_T *rty_distance,
  B_basicOpenLoopMSD1_c_T *localB, DW_basicOpenLoopMSD1_f_T *localDW);

/*-
 * These blocks were eliminated from the model due to optimizations:
 *
 * Block '<Root>/Gain1' : Eliminated nontunable gain of 1
 * Block '<Root>/damper' : Eliminated nontunable gain of 1
 */

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
 * '<Root>' : 'basicOpenLoopMSD1'
 */
#endif                                 /* RTW_HEADER_basicOpenLoopMSD1_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
