import 'package:flutter_app/storeList.dart';
import 'package:flutter/material.dart';

class storeListRoute extends StatelessWidget {
  double a;
  static const _storeListName = <String>[
    '兰店',
    '寿司店',
    '牛肉面店',
    '水煮鱼店',
    '牛杂店',
    '烤肉饭店',
    '粥店',
    '肠粉店',
    '饺子',
  ];
  static const _storeListPic = <String>[
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1534850698168&di=67e9833439fbeeab237b216bb4734454&imgtype=0&src=http%3A%2F%2Fimg1.gtimg.com%2Ffinance%2Fpics%2Fhv1%2F8%2F238%2F1365%2F88819823.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1534862189015&di=ce64117adc37f613116b8f4e38e30ac1&imgtype=0&src=http%3A%2F%2Fe.hiphotos.baidu.com%2Fbainuo%2Fcrop%3D0%2C50%2C700%2C424%3Bw%3D470%3Bq%3D79%2Fsign%3Dbf47ce3670c6a7efad69f266c0ca8364%2Fd0c8a786c9177f3e3f5f97e476cf3bc79e3d56eb.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1534862230744&di=8e4c43ad8fdab7ec2d109a4bf11ce06b&imgtype=0&src=http%3A%2F%2Fe.hiphotos.baidu.com%2Fbainuo%2Fcrop%3D0%2C0%2C950%2C633%3Bw%3D690%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95%2Fsign%3D97d6c8e0d133c895b231c23bec235fc0%2F562c11dfa9ec8a13fbd5e897ff03918fa1ecc0fe.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1534862247766&di=ed83c5b989d05475f5e96d233b83632a&imgtype=0&src=http%3A%2F%2Fpic29.photophoto.cn%2F20131111%2F0042040267088457_b.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1534862260733&di=8e3fc1dbc419599b96c70ce10d2b98bc&imgtype=0&src=http%3A%2F%2Fimg2.qihuiwang.com%2F2FF4FFFC81DD76FF9ED68CC3BF6B106A_800_0_max_jpg.jpg',
    'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=477980905,3435139368&fm=26&gp=0.jpg',
    'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=253487511,2806641090&fm=26&gp=0.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1535457018&di=7455f3a4be3c7d12673d6ff32a067b0f&imgtype=jpg&er=1&src=http%3A%2F%2Fimg.mp.sohu.com%2Fupload%2F20170708%2F6f39b65589ba476e9819ac48296d348c_th.png',
    'http://5b0988e595225.cdn.sohucs.com/images/20180220/722d46bea8e54f1aa5e87ce4b9db59b6.jpeg',
  ];
  static const __storeListScore = <String>[
    '5',
    '2',
    '4',
    '5',
    '3',
    '1',
    '5',
    '0',
    '3',
  ];
  static const _storeListSale = <String>[
    '45',
    '56',
    '2',
    '5',
    '67',
    '98',
    '78',
    '200',
    '20',
  ];
  static const _storeListStartingPrice = <String>[
    '12',
    '14',
    '0',
    '20',
    '10',
    '14',
    '6',
    '12',
    '10',
  ];
  static const _storeListShipping = <String>[
    '1',
    '4',
    '2',
    '4',
    '3',
    '5',
    '1',
    '2',
    '2',
  ];
  static const _storeListCategory = <String>[
    '面',
    '日料',
    '面',
    '川菜',
    '地方特色',
    '快餐',
    '早点',
    '早点',
    '早点',
  ];
  static const _storeListPromotion = <String>[
    '新用户减6',
    '满20减8',
    ' ',
    '满20减8',
    '满20减8',
    ' ',
    ' ',
    '满20减8',
    ' ',
  ];

  Widget _buildCategoryWidgets(List<Widget> categories) {
    return ListView.builder(
      physics: ScrollPhysics(parent: NeverScrollableScrollPhysics()),
      itemBuilder: (BuildContext context, int index) {
        return categories[index];
      },
      itemCount: categories.length,
    );
  }

  Widget build(BuildContext context) {
    final categories = <storeList>[];
    a = (_storeListName.length+ .0);

    for (var i = 0; i < _storeListName.length; i++) {
      categories.add(storeList(
        name: _storeListName[i],
        picLoction: _storeListPic[i],
        score: __storeListScore[i],
        sale: _storeListSale[i],
        startingPrice: _storeListStartingPrice[i],
        shipping: _storeListShipping[i],
        category: _storeListCategory[i],
        promotion: _storeListPromotion[i],
      ));
    }


    
    return Container(
        child: _buildCategoryWidgets(categories));
  }
}

