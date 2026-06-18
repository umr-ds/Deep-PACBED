# DeepPACBED: Multitask Analysis of PACBED Images using Deep Neural Networks

This repository provides the trained models and the experimental data presented in the paper "Deep PACBED: Multitask Analysis of PACBED Images using Deep Neural Networks" (Schneider et al., 2026).

The experimental PACBED images were recorded over multiple experiments with different probes and detectors. The experimental images were annotated manually by comparing them with simulated data and tracking structures in the diffraction patterns. For images where the parameters could not be determined unambiguously, an ignore label was used.

The best models from our papers are available in the Tensorflow2 SavedModel format (https://www.tensorflow.org/guide/saved_model). We provide a code snippet to load the models and perform predictions.  

## File Structure
The repository is structured as follows:
- `models` contains download scripts for the best models from our paper and a code snippet to perform predictions with these models.
- `data` contains download scripts for our experimental (Exp) PACBED datasets.
