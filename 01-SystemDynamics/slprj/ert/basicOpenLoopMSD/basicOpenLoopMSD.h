/*
 * File: basicOpenLoopMSD.h
 *
 * Code generated for Simulink model 'basicOpenLoopMSD'.
 *
 * Model version                  : 1.8
 * Simulink Coder version         : 9.5 (R2021a) 14-Nov-2020
 * C/C++ source code generated on : Mon Dec 18 23:14:05 2023
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Intel->x86-64 (Windows64)
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_basicOpenLoopMSD_h_
#define RTW_HEADER_basicOpenLoopMSD_h_
#ifndef basicOpenLoopMSD_COMMON_INCLUDES_
#define basicOpenLoopMSD_COMMON_INCLUDES_
#include "rtwtypes.h"
#include "rtw_continuous.h"
#include "rtw_solver.h"
#endif                                 /* basicOpenLoopMSD_COMMON_INCLUDES_ */

#include "basicOpenLoopMSD_types.h"

/* Block signals for model 'basicOpenLoopMSD' */
typedef struct {
  real_T stiffness;                    /* '<Root>/stiffness' */
  real_T speed;                        /* '<Root>/Discrete-Time Integrator' */
  real_T maccleartion;                 /* '<Root>/Add' */
} B_basicOpenLoopMSD_c_T;

/* Block states (default storage) for model 'basicOpenLoopMSD' */
typedef struct {
  real_T DiscreteTimeIntegrator1_DSTATE;/* '<Root>/Discrete-Time Integrator1' */
  real_T DiscreteTimeIntegrator_DSTATE;/* '<Root>/Discrete-Time Integrator' */
  uint8_T DiscreteTimeIntegrator1_IC_LOAD;/* '<Root>/Discrete-Time Integrator1' */
  uint8_T DiscreteTimeIntegrator_IC_LOADI;/* '<Root>/Discrete-Time Integrator' */
} DW_basicOpenLoopMSD_f_T;

/* Real-time Model Data Structure */
struct tag_RTM_basicOpenLoopMSD_T {
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
  B_basicOpenLoopMSD_c_T rtb;
  DW_basicOpenLoopMSD_f_T rtdw;
  RT_MODEL_basicOpenLoopMSD_T rtm;
} MdlrefDW_basicOpenLoopMSD_T;

/* Model reference registration function */
extern void basicOpenLoopMSD_initialize(const char_T **rt_errorStatus,
  RTWSolverInfo *rt_solverInfo, RT_MODEL_basicOpenLoopMSD_T *const
  basicOpenLoopMSD_M);
extern void basicOpenLoopMSD_Init(DW_basicOpenLoopMSD_f_T *localDW);
extern void basicOpenLoopMSD_Update(RT_MODEL_basicOpenLoopMSD_T * const
  basicOpenLoopMSD_M, B_basicOpenLoopMSD_c_T *localB, DW_basicOpenLoopMSD_f_T
  *localDW);
extern void basicOpenLoopMSD(RT_MODEL_basicOpenLoopMSD_T * const
  basicOpenLoopMSD_M, const real_T *rtu_Ft, const real_T *rtu_intialSpeed, const
  real_T *rtu_intialdistance, real_T *rty_distance, B_basicOpenLoopMSD_c_T
  *localB, DW_basicOpenLoopMSD_f_T *localDW);

/*-
 * These blocks were eliminated from the model due to optimizations:
 *
 * Block '<Root>/Gain1' : Eliminated nontunable gain of 1
 * Block '<Root>/Gain2' : Eliminated nontunable gain of 1
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
 * '<Root>' : 'basicOpenLoopMSD'
 */
#endif                                 /* RTW_HEADER_basicOpenLoopMSD_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
