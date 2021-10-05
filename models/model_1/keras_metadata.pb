
�@root"_tf_keras_network*�@{"name": "model_15", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model_15", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 64, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_35"}, "name": "input_35", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 64, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_36"}, "name": "input_36", "inbound_nodes": []}, {"class_name": "Flatten", "config": {"name": "flatten_34", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_34", "inbound_nodes": [[["input_35", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_35", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_35", "inbound_nodes": [[["input_36", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_53", "trainable": true, "dtype": "float32", "units": 16, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_53", "inbound_nodes": [[["flatten_34", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_54", "trainable": true, "dtype": "float32", "units": 16, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_54", "inbound_nodes": [[["flatten_35", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_17", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_17", "inbound_nodes": [[["dense_53", 0, 0, {}], ["dense_54", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_55", "trainable": true, "dtype": "float32", "units": 24576, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_55", "inbound_nodes": [[["concatenate_17", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "reshape_17", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [128, 64, 3]}}, "name": "reshape_17", "inbound_nodes": [[["dense_55", 0, 0, {}]]]}], "input_layers": [["input_35", 0, 0], ["input_36", 0, 0]], "output_layers": [["reshape_17", 0, 0]]}, "shared_object_id": 15, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 128, 64, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 128, 64, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, 128, 64, 3]}, {"class_name": "TensorShape", "items": [null, 128, 64, 3]}], "is_graph_network": true, "full_save_spec": {"class_name": "__tuple__", "items": [[[{"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 128, 64, 3]}, "float32", "input_35"]}, {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 128, 64, 3]}, "float32", "input_36"]}]], {}]}, "save_spec": [{"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 128, 64, 3]}, "float32", "input_35"]}, {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 128, 64, 3]}, "float32", "input_36"]}], "keras_version": "2.6.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_15", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 64, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_35"}, "name": "input_35", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 64, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_36"}, "name": "input_36", "inbound_nodes": [], "shared_object_id": 1}, {"class_name": "Flatten", "config": {"name": "flatten_34", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_34", "inbound_nodes": [[["input_35", 0, 0, {}]]], "shared_object_id": 2}, {"class_name": "Flatten", "config": {"name": "flatten_35", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_35", "inbound_nodes": [[["input_36", 0, 0, {}]]], "shared_object_id": 3}, {"class_name": "Dense", "config": {"name": "dense_53", "trainable": true, "dtype": "float32", "units": 16, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_53", "inbound_nodes": [[["flatten_34", 0, 0, {}]]], "shared_object_id": 6}, {"class_name": "Dense", "config": {"name": "dense_54", "trainable": true, "dtype": "float32", "units": 16, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_54", "inbound_nodes": [[["flatten_35", 0, 0, {}]]], "shared_object_id": 9}, {"class_name": "Concatenate", "config": {"name": "concatenate_17", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_17", "inbound_nodes": [[["dense_53", 0, 0, {}], ["dense_54", 0, 0, {}]]], "shared_object_id": 10}, {"class_name": "Dense", "config": {"name": "dense_55", "trainable": true, "dtype": "float32", "units": 24576, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_55", "inbound_nodes": [[["concatenate_17", 0, 0, {}]]], "shared_object_id": 13}, {"class_name": "Reshape", "config": {"name": "reshape_17", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [128, 64, 3]}}, "name": "reshape_17", "inbound_nodes": [[["dense_55", 0, 0, {}]]], "shared_object_id": 14}], "input_layers": [["input_35", 0, 0], ["input_36", 0, 0]], "output_layers": [["reshape_17", 0, 0]]}}, "training_config": {"loss": "mean_squared_error", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 18}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.10000000149011612, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}2
�root.layer-0"_tf_keras_input_layer*�{"class_name": "InputLayer", "name": "input_35", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 64, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 64, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_35"}}2
�root.layer-1"_tf_keras_input_layer*�{"class_name": "InputLayer", "name": "input_36", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 64, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 64, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_36"}}2
�root.layer-2"_tf_keras_layer*�{"name": "flatten_34", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_34", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "inbound_nodes": [[["input_35", 0, 0, {}]]], "shared_object_id": 2, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 19}}2
�root.layer-3"_tf_keras_layer*�{"name": "flatten_35", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_35", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "inbound_nodes": [[["input_36", 0, 0, {}]]], "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 20}}2
�root.layer_with_weights-0"_tf_keras_layer*�{"name": "dense_53", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_53", "trainable": true, "dtype": "float32", "units": 16, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["flatten_34", 0, 0, {}]]], "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 24576}}, "shared_object_id": 21}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24576]}}2
�root.layer_with_weights-1"_tf_keras_layer*�{"name": "dense_54", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_54", "trainable": true, "dtype": "float32", "units": 16, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["flatten_35", 0, 0, {}]]], "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 24576}}, "shared_object_id": 22}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24576]}}2
�root.layer-6"_tf_keras_layer*�{"name": "concatenate_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate_17", "trainable": true, "dtype": "float32", "axis": -1}, "inbound_nodes": [[["dense_53", 0, 0, {}], ["dense_54", 0, 0, {}]]], "shared_object_id": 10, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 16]}, {"class_name": "TensorShape", "items": [null, 16]}]}2
�root.layer_with_weights-2"_tf_keras_layer*�{"name": "dense_55", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_55", "trainable": true, "dtype": "float32", "units": 24576, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["concatenate_17", 0, 0, {}]]], "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 23}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}2
�	root.layer-8"_tf_keras_layer*�{"name": "reshape_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Reshape", "config": {"name": "reshape_17", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [128, 64, 3]}}, "inbound_nodes": [[["dense_55", 0, 0, {}]]], "shared_object_id": 14}2
�iroot.keras_api.metrics.0"_tf_keras_metric*�{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 24}2
�jroot.keras_api.metrics.1"_tf_keras_metric*�{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 18}2