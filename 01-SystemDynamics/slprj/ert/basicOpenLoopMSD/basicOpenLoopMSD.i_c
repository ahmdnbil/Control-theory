/*
 * File: basicOpenLoopMSD.c
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

#include "basicOpenLoopMSD.h"
#include "basicOpenLoopMSD_private.h"

/* System initialize for referenced model: 'basicOpenLoopMSD' */
void basicOpenLoopMSD_Init(DW_basicOpenLoopMSD_f_T *localDW)
{
  /* InitializeConditions for DiscreteIntegrator: '<Root>/Discrete-Time Integrator1' */
  localDW->DiscreteTimeIntegrator1_IC_LOAD = 1U;

  /* InitializeConditions for DiscreteIntegrator: '<Root>/Discrete-Time Integrator' */
  localDW->DiscreteTimeIntegrator_IC_LOADI = 1U;
}

/* Outputs for referenced model: 'basicOpenLoopMSD' */
void basicOpenLoopMSD(RT_MODEL_basicOpenLoopMSD_T * const basicOpenLoopMSD_M,
                      const real_T *rtu_Ft, const real_T *rtu_intialSpeed, const
                      real_T *rtu_intialdistance, real_T *rty_distance,
                      B_basicOpenLoopMSD_c_T *localB, DW_basicOpenLoopMSD_f_T
                      *localDW)
{
  if (rtmIsMajorTimeStep(basicOpenLoopMSD_M)) {
    /* DiscreteIntegrator: '<Root>/Discrete-Time Integrator1' */
    if (localDW->DiscreteTimeIntegrator1_IC_LOAD != 0) {
      localDW->DiscreteTimeIntegrator1_DSTATE = *rtu_intialdistance;
    }

    *rty_distance = localDW->DiscreteTimeIntegrator1_DSTATE;

    /* End of DiscreteIntegrator: '<Root>/Discrete-Time Integrator1' */

    /* Gain: '<Root>/stiffness' */
    localB->stiffness = 4.0 * *rty_distance;

    /* DiscreteIntegrator: '<Root>/Discrete-Time Integrator' */
    if (localDW->DiscreteTimeIntegrator_IC_LOADI != 0) {
      localDW->DiscreteTimeIntegrator_DSTATE = *rtu_intialSpeed;
    }

    /* DiscreteIntegrator: '<Root>/Discrete-Time Integrator' */
    localB->speed = localDW->DiscreteTimeIntegrator_DSTATE;
  }

  /* Sum: '<Root>/Add' */
  localB->maccleartion = (*rtu_Ft - localB->stiffness) - localB->speed;
}

/* Update for referenced model: 'basicOpenLoopMSD' */
void basicOpenLoopMSD_Update(RT_MODEL_basicOpenLoopMSD_T * const
  basicOpenLoopMSD_M, B_basicOpenLoopMSD_c_T *localB, DW_basicOpenLoopMSD_f_T
  *localDW)
{
  if (rtmIsMajorTimeStep(basicOpenLoopMSD_M)) {
    /* Update for DiscreteIntegrator: '<Root>/Discrete-Time Integrator1' */
    localDW->DiscreteTimeIntegrator1_IC_LOAD = 0U;
    localDW->DiscreteTimeIntegrator1_DSTATE += 0.001 * localB->speed;

    /* Update for DiscreteIntegrator: '<Root>/Discrete-Time Integrator' */
    localDW->DiscreteTimeIntegrator_IC_LOADI = 0U;
    localDW->DiscreteTimeIntegrator_DSTATE += 0.001 * localB->maccleartion;
  }
}

/* Model initialize function */
void basicOpenLoopMSD_initialize(const char_T **rt_errorStatus, RTWSolverInfo
  *rt_solverInfo, RT_MODEL_basicOpenLoopMSD_T *const basicOpenLoopMSD_M)
{
  /* Registration code */

  /* initialize error status */
  rtmSetErrorStatusPointer(basicOpenLoopMSD_M, rt_errorStatus);

  /* initialize RTWSolverInfo */
  basicOpenLoopMSD_M->solverInfo = (rt_solverInfo);

  /* Set the Timing fields to the appropriate data in the RTWSolverInfo */
  rtmSetSimTimeStepPointer(basicOpenLoopMSD_M, rtsiGetSimTimeStepPtr
    (basicOpenLoopMSD_M->solverInfo));
  basicOpenLoopMSD_M->Timing.stepSize0 = (rtsiGetStepSize
    (basicOpenLoopMSD_M->solverInfo));
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
