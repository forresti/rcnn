
%e.g. FORREST_extract_train_test('./data/caffe_nets/finetune_voc_2007_trainval_iter_70k', 'v1_finetune_voc_2007_trainval_iter_70k');

% caffe('set_device', 1)
% FORREST_extract_train_test('../train_a19_stock/caffe_imagenet_train_iter_300000', 'alexnet_300k_voc_2007_trainval', 'rcnn_model_fc7_300k_voc2007.mat');

function FORREST_extract_train_test(net_file, cache_name, out_model_file)


%    rcnn_exp_cache_features('train', net_file, cache_name);   % chunk1
%    rcnn_exp_cache_features('val', net_file, cache_name);     % chunk2
%    rcnn_exp_cache_features('test_1', net_file, cache_name);  % chunk3
%    rcnn_exp_cache_features('test_2', net_file, cache_name);  % chunk4
    test_results = rcnn_exp_train_and_test(net_file, cache_name, out_model_file)

    %TODO: look at test_results output?

