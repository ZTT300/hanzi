import Foundation

let sampleLessons: [CharacterLesson] = [
    CharacterLesson(
        grade: 1,
        theme: .cars,
        title: "赛车拼音小队",
        story: "小男孩和他的赛车队在赛道上学习汉字，就像给赛车加油一样认识新朋友。",
        goal: "掌握一年级拼音和常用生字，能用这些字词描述自己的赛车。",
        characters: [
            CharacterEntry(character: "车", pinyin: "chē", meaning: "vehicle", strokeHint: "撇折后横折，像画出车头。", sampleWord: "汽车"),
            CharacterEntry(character: "跑", pinyin: "pǎo", meaning: "run", strokeHint: "先左后右，脚步不停。", sampleWord: "奔跑"),
            CharacterEntry(character: "快", pinyin: "kuài", meaning: "fast", strokeHint: "竖心旁提醒比赛要用心。", sampleWord: "快速")
        ]
    ),
    CharacterLesson(
        grade: 3,
        theme: .space,
        title: "航天发射日",
        story: "在发射塔前，孩子跟着航天员读写新汉字，把每个字当做飞船的零件。",
        goal: "认识三年级常用汉字，能写出与航天相关的词语。",
        characters: [
            CharacterEntry(character: "星", pinyin: "xīng", meaning: "star", strokeHint: "日字旁像亮光，生长在天空。", sampleWord: "星空"),
            CharacterEntry(character: "空", pinyin: "kōng", meaning: "sky/empty", strokeHint: "穴字头像太空舱入口。", sampleWord: "天空"),
            CharacterEntry(character: "航", pinyin: "háng", meaning: "navigate", strokeHint: "舟旁像飞船，旁边的亢代表力量。", sampleWord: "航天")
        ]
    ),
    CharacterLesson(
        grade: 5,
        theme: .heroes,
        title: "奥特曼城市守护",
        story: "奥特曼在城市守护大家，小男孩通过写字卡完成奥特曼的能量任务。",
        goal: "巩固五年级汉字书写，练习用新词讲述守护故事。",
        characters: [
            CharacterEntry(character: "守", pinyin: "shǒu", meaning: "guard", strokeHint: "宀字头像屋顶，寸字提醒行动。", sampleWord: "守护"),
            CharacterEntry(character: "光", pinyin: "guāng", meaning: "light", strokeHint: "从上往下，像光线降落。", sampleWord: "光芒"),
            CharacterEntry(character: "勇", pinyin: "yǒng", meaning: "brave", strokeHint: "甬中有力，提笔要干净有力。", sampleWord: "勇气")
        ]
    )
]
