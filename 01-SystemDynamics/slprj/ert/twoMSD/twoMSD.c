/*
 * File: twoMSD.c
 *
 * Code generated for Simulink model 'twoMSD'.
 *
 * Model version                  : 1.4
 * Simulink Coder version         : 9.5 (R2021a) 14-Nov-2020
 * C/C++ source code generated on : Tue Dec 19 20:24:20 2023
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Intel->x86-64 (Windows64)
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "twoMSD.h"
#include "twoMSD_private.h"

/* Output and update for referenced model: 'twoMSD' */
void twoMSD(const real_T *rtu_F, real_T *rty_x1, real_T *rty_x3, DW_twoMSD_f_T
            *localDW)
{
  real_T rtb_Add;
  real_T rtb_Add1;

  /* DiscreteIntegrator: '<Root>/Discrete-Time Integrator3' */
  *rty_x1 = localDW->DiscreteTimeIntegrator3_DSTATE;

  /* DiscreteIntegrator: '<Root>/Discrete-Time Integrator1' */
  *rty_x3 = localDW->DiscreteTimeIntegrator1_DSTATE;

  /* Sum: '<Root>/Add' incorporates:
   *  DiscreteIntegrator: '<Root>/Discrete-Time Integrator'
   *  DiscreteIntegrator: '<Root>/Discrete-Time Integrator2'
   *  Gain: '<Root>/Gain2'
   *  Gain: '<Root>/Gain3'
   *  Gain: '<Root>/Gain6'
   *  Gain: '<Root>/Gain7'
   */
  rtb_Add = ((3.0 * *rty_x1 + 4.0 * localDW->DiscreteTimeIntegrator2_DSTATE) -
             8.0 * *rty_x3) - 4.0 * localDW->DiscreteTimeIntegrator_DSTATE;

  /* Sum: '<Root>/Add1' incorporates:
   *  DiscreteIntegrator: '<Root>/Discrete-Time Integrator'
   *  DiscreteIntegrator: '<Root>/Discrete-Time Integrator2'
   *  Gain: '<Root>/Gain4'
   *  Gain: '<Root>/Gain5'
   *  Gain: '<Root>/Gain8'
   *  Gain: '<Root>/Gain9'
   */
  rtb_Add1 = (((4.0 * localDW->DiscreteTimeIntegrator_DSTATE + *rtu_F) + 3.0 *
               *rty_x3) - 3.0 * *rty_x1) - 4.0 *
    localDW->DiscreteTimeIntegrator2_DSTATE;

  /* Update for DiscreteIntegrator: '<Root>/Discrete-Time Integrator3' incorporates:
   *  DiscreteIntegrator: '<Root>/Discrete-Time Integrator2'
   */
  localDW->DiscreteTimeIntegrator3_DSTATE += 0.2 *
    localDW->DiscreteTimeIntegrator2_DSTATE;

  /* Update for DiscreteIntegrator: '<Root>/Discrete-Time Integrator2' incorporates:
   *  Gain: '<Root>/Gain1'
   */
  localDW->DiscreteTimeIntegrator2_DSTATE += 0.5 * rtb_Add1 * 0.2;

  /* Update for DiscreteIntegrator: '<Root>/Discrete-Time Integrator1' incorporates:
   *  DiscreteIntegrator: '<Root>/Discrete-Time Integrator'
   */
  localDW->DiscreteTimeIntegrator1_DSTATE += 0.2 *
    localDW->DiscreteTimeIntegrator_DSTATE;

  /* Update for DiscreteIntegrator: '<Root>/Discrete-Time Integrator' incorporates:
   *  Gain: '<Root>/Gain'
   */
  localDW->DiscreteTimeIntegrator_DSTATE += 0.5 * rtb_Add * 0.2;
}

/* Model initialize function */
void twoMSD_initialize(const char_T **rt_errorStatus, RT_MODEL_twoMSD_T *const
  twoMSD_M)
{
  /* Registration code */

  /* initialize error status */
  rtmSetErrorStatusPointer(twoMSD_M, rt_errorStatus);
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
