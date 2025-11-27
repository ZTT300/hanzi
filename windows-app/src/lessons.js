const themes = [
  {
    id: 'cars',
    name: '赛车冒险',
    color: '#e63c45',
    accent: '#ffd166',
    description: '跟着勇敢的小赛车学习速度与合作的汉字。',
    lessons: [
      {
        title: '赛道上的伙伴',
        grade: '一年级',
        characters: [
          { hanzi: '车', pinyin: 'chē', strokes: '横-竖-横折-横-竖-横折-横', meaning: 'vehicle' },
          { hanzi: '快', pinyin: 'kuài', strokes: '横-竖-撇-点-点-横折', meaning: 'fast' },
          { hanzi: '跑', pinyin: 'pǎo', strokes: '点-横撇-横折-撇-捺-撇-捺', meaning: 'run' },
        ],
        story: '小赛车在赛道上飞驰，学会了“车、快、跑”这些生字，并帮助朋友完成接力赛。',
        practice: '用手指在空中画出笔顺，模仿赛车冲线的轨迹。',
        challenge: '用“车、快、跑”编一个赛道上的句子，比如：“小车跑得真快！”',
      },
      {
        title: '维修站日常',
        grade: '二年级',
        characters: [
          { hanzi: '修', pinyin: 'xiū', strokes: '撇-横-竖-横-撇-横-撇-捺-横折折折钩-横', meaning: 'repair' },
          { hanzi: '油', pinyin: 'yóu', strokes: '点-点-提-横-竖-横折-横-竖-横-点', meaning: 'oil' },
          { hanzi: '灯', pinyin: 'dēng', strokes: '点-横撇-横钩-点-撇-竖弯钩-点-点', meaning: 'lamp' },
        ],
        story: '赛车进站，技师教小朋友认识“修、油、灯”，一起让赛车满血复活。',
        practice: '跟着技师读拼音，再用铅笔写一遍，注意左右结构的平衡。',
        challenge: '说一说你家见过的车灯长什么样，用新学的字描述。',
      },
    ],
  },
  {
    id: 'space',
    name: '航天探险',
    color: '#1d3557',
    accent: '#4cc9f0',
    description: '乘坐火箭遨游太空，学习星星和行星的汉字。',
    lessons: [
      {
        title: '火箭发射',
        grade: '二年级',
        characters: [
          { hanzi: '火', pinyin: 'huǒ', strokes: '点-撇-撇-捺', meaning: 'fire' },
          { hanzi: '箭', pinyin: 'jiàn', strokes: '横-竖-横折-横-竖钩-撇-竖-横折-横-撇-捺-点', meaning: 'arrow/rocket' },
          { hanzi: '升', pinyin: 'shēng', strokes: '竖-横折-横-竖-竖-横', meaning: 'rise' },
        ],
        story: '火箭点火升空，带着孩子认识“火、箭、升”三字，倒数发射更有趣。',
        practice: '跟着倒计时写笔顺：三、二、一，点火！',
        challenge: '用“火、箭、升”造一个与太空有关的句子。',
      },
      {
        title: '月球基地',
        grade: '三年级',
        characters: [
          { hanzi: '月', pinyin: 'yuè', strokes: '撇-横撇-竖弯钩-横', meaning: 'moon' },
          { hanzi: '光', pinyin: 'guāng', strokes: '撇-撇-横撇-横折-点', meaning: 'light' },
          { hanzi: '石', pinyin: 'shí', strokes: '横-撇-横撇-撇-捺', meaning: 'stone' },
        ],
        story: '登上月球基地，采集“月光石”，体验外星课堂。',
        practice: '在纸上画出弯弯的月牙，再把“月、光、石”写进去。',
        challenge: '想象你在月球上看到什么，用新学的字写一段话。',
      },
    ],
  },
  {
    id: 'hero',
    name: '奥特英雄',
    color: '#4b0082',
    accent: '#ffafcc',
    description: '跟着奥特曼打怪兽，练习勇气与正义的汉字。',
    lessons: [
      {
        title: '城市守护',
        grade: '三年级',
        characters: [
          { hanzi: '勇', pinyin: 'yǒng', strokes: '撇-竖-横折-横-竖-横折-横-撇-捺', meaning: 'brave' },
          { hanzi: '守', pinyin: 'shǒu', strokes: '点-点-横撇-横-竖-横-竖-竖-横', meaning: 'guard' },
          { hanzi: '城', pinyin: 'chéng', strokes: '点-点-提-横-竖-横折-横-竖-横-撇-捺', meaning: 'city' },
        ],
        story: '奥特英雄保卫城市，学会“勇、守、城”，并用光线技能驱赶怪兽。',
        practice: '做一个“十”字站姿练习平衡，再写“勇”字的心字底。',
        challenge: '用三个字写一句口号，例如：“勇守城市，人人平安。”',
      },
      {
        title: '银河巡逻',
        grade: '四年级',
        characters: [
          { hanzi: '星', pinyin: 'xīng', strokes: '横-竖-撇-捺-撇-捺-点', meaning: 'star' },
          { hanzi: '巡', pinyin: 'xún', strokes: '撇-竖-横折-横-撇-捺-撇-竖-点', meaning: 'patrol' },
          { hanzi: '光', pinyin: 'guāng', strokes: '撇-撇-横撇-横折-点', meaning: 'light' },
        ],
        story: '巡逻银河时，英雄找到闪亮的星光，复习“星、巡、光”。',
        practice: '把“星”写成五角星的样子，再补充正确笔画。',
        challenge: '写一写如果你有光线技能，会怎样保护地球。',
      },
    ],
  },
];

module.exports = { themes };
