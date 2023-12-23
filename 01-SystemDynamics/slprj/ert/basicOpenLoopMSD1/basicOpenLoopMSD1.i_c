/*
 * File: basicOpenLoopMSD1.c
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

#include "basicOpenLoopMSD1.h"
#include "basicOpenLoopMSD1_private.h"

/* System initialize for referenced model: 'basicOpenLoopMSD1' */
void basicOpenLoopMSD1_Init(DW_basicOpenLoopMSD1_f_T *localDW)
{
  /* InitializeConditions for DiscreteIntegrator: '<Root>/Discrete-Time Integrator' */
  localDW->DiscreteTimeIntegrator_IC_LOADI = 1U;

  /* InitializeConditions for DiscreteIntegrator: '<Root>/Discrete-Time Integrator1' */
  localDW->DiscreteTimeIntegrator1_IC_LOAD = 1U;
}

/* Outputs for referenced model: 'basicOpenLoopMSD1' */
void basicOpenLoopMSD1(RT_MODEL_basicOpenLoopMSD1_T * const basicOpenLoopMSD1_M,
  const real_T *rtu_Ft, const real_T *rtu_intialSpeed, const real_T
  *rtu_intialdistance, real_T *rty_distance, B_basicOpenLoopMSD1_c_T *localB,
  DW_basicOpenLoopMSD1_f_T *localDW)
{
  if (rtmIsMajorTimeStep(basicOpenLoopMSD1_M)) {
    /* DiscreteIntegrator: '<Root>/Discrete-Time Integrator' */
    if (localDW->DiscreteTimeIntegrator_IC_LOADI != 0) {
      localDW->DiscreteTimeIntegrator_DSTATE = *rtu_intialdistance;
    }

    *rty_distance = localDW->DiscreteTimeIntegrator_DSTATE;

    /* End of DiscreteIntegrator: '<Root>/Discrete-Time Integrator' */

    /* Gain: '<Root>/spring' */
    localB->spring = 4.0 * *rty_distance;

    /* DiscreteIntegrator: '<Root>/Discrete-Time Integrator1' */
    if (localDW->DiscreteTimeIntegrator1_IC_LOAD != 0) {
      localDW->DiscreteTimeIntegrator1_DSTATE = *rtu_intialSpeed;
    }

    /* DiscreteIntegrator: '<Root>/Discrete-Time Integrator1' */
    localB->speed = localDW->DiscreteTimeIntegrator1_DSTATE;
  }

  /* Sum: '<Root>/Add' */
  localB->maccleartion = (*rtu_Ft - localB->spring) - localB->speed;
}

/* Update for referenced model: 'basicOpenLoopMSD1' */
void basicOpenLoopMSD1_Update(RT_MODEL_basicOpenLoopMSD1_T * const
  basicOpenLoopMSD1_M, B_basicOpenLoopMSD1_c_T *localB, DW_basicOpenLoopMSD1_f_T
  *localDW)
{
  if (rtmIsMajorTimeStep(basicOpenLoopMSD1_M)) {
    /* Update for DiscreteIntegrator: '<Root>/Discrete-Time Integrator' */
    localDW->DiscreteTimeIntegrator_IC_LOADI = 0U;
    localDW->DiscreteTimeIntegrator_DSTATE += 0.001 * localB->speed;

    /* Update for DiscreteIntegrator: '<Root>/Discrete-Time Integrator1' */
    localDW->DiscreteTimeIntegrator1_IC_LOAD = 0U;
    localDW->DiscreteTimeIntegrator1_DSTATE += 0.001 * localB->maccleartion;
  }
}

/* Model initialize function */
void basicOpenLoopMSD1_initialize(const char_T **rt_errorStatus, RTWSolverInfo
  *rt_solverInfo, RT_MODEL_basicOpenLoopMSD1_T *const basicOpenLoopMSD1_M)
{
  /* Registration code */

  /* initialize error status */
  rtmSetErrorStatusPointer(basicOpenLoopMSD1_M, rt_errorStatus);

  /* initialize RTWSolverInfo */
  basicOpenLoopMSD1_M->solverInfo = (rt_solverInfo);

  /* Set the Timing fields to the appropriate data in the RTWSolverInfo */
  rtmSetSimTimeStepPointer(basicOpenLoopMSD1_M, rtsiGetSimTimeStepPtr
    (basicOpenLoopMSD1_M->solverInfo));
  basicOpenLoopMSD1_M->Timing.stepSize0 = (rtsiGetStepSize
    (basicOpenLoopMSD1_M->solverInfo));
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
