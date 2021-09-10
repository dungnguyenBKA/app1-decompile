.class public Lln;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnn;",
            ">;)",
            "Ljava/util/List<",
            "Lmn;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnn;

    .line 4
    invoke-virtual {v1}, Lnn;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/util/List;
    .locals 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lnn;",
            ">;"
        }
    .end annotation

    move-object/from16 v6, p0

    .line 1
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {}, Lyp;->F()Lyp;

    move-result-object v0

    invoke-virtual {v0}, Lyp;->H()Ljava/util/List;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v9, Lnn;

    invoke-direct {v9}, Lnn;-><init>()V

    const v0, 0x7f0e014b

    .line 4
    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lnn;->e(Ljava/lang/String;)V

    .line 5
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v0, Lmn;

    invoke-direct {v0}, Lmn;-><init>()V

    const v1, 0x7f07013e

    .line 7
    invoke-virtual {v0, v1}, Lmn;->g(I)V

    const/4 v11, 0x0

    .line 8
    invoke-virtual {v0, v11}, Lmn;->h(I)V

    .line 9
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v0, Lmn;

    invoke-direct {v0}, Lmn;-><init>()V

    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Lmn;->h(I)V

    .line 12
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 14
    new-instance v13, Lmn;

    const/4 v14, 0x2

    const v1, 0x7f0700e0

    invoke-direct {v13, v14, v1, v11}, Lmn;-><init>(IIZ)V

    const v15, 0x7f0700e1

    move-object/from16 v0, p0

    move-object v2, v13

    move v3, v14

    move v4, v15

    move v5, v11

    .line 15
    invoke-static/range {v0 .. v5}, Lic;->z(Landroid/content/Context;ILmn;IIZ)Lmn;

    move-result-object v5

    const v16, 0x7f0700e2

    move v1, v15

    move-object v2, v5

    move/from16 v4, v16

    move-object v15, v5

    move v5, v11

    .line 16
    invoke-static/range {v0 .. v5}, Lic;->z(Landroid/content/Context;ILmn;IIZ)Lmn;

    move-result-object v5

    const v17, 0x7f0700e3

    move/from16 v1, v16

    move-object v2, v5

    move/from16 v4, v17

    move-object/from16 v18, v5

    move v5, v11

    .line 17
    invoke-static/range {v0 .. v5}, Lic;->z(Landroid/content/Context;ILmn;IIZ)Lmn;

    move-result-object v5

    const v16, 0x7f0700e4

    move/from16 v1, v17

    move-object v2, v5

    move/from16 v4, v16

    move-object/from16 v19, v5

    move v5, v11

    .line 18
    invoke-static/range {v0 .. v5}, Lic;->z(Landroid/content/Context;ILmn;IIZ)Lmn;

    move-result-object v5

    const v17, 0x7f0700e5

    move/from16 v1, v16

    move-object v2, v5

    move/from16 v4, v17

    move-object/from16 v20, v5

    move v5, v11

    .line 19
    invoke-static/range {v0 .. v5}, Lic;->z(Landroid/content/Context;ILmn;IIZ)Lmn;

    move-result-object v5

    const v16, 0x7f0700e6

    move/from16 v1, v17

    move-object v2, v5

    move/from16 v4, v16

    move-object/from16 v21, v5

    move v5, v11

    .line 20
    invoke-static/range {v0 .. v5}, Lic;->z(Landroid/content/Context;ILmn;IIZ)Lmn;

    move-result-object v5

    const v17, 0x7f0700e7

    move/from16 v1, v16

    move-object v2, v5

    move/from16 v4, v17

    move-object/from16 v22, v5

    move v5, v11

    .line 21
    invoke-static/range {v0 .. v5}, Lic;->z(Landroid/content/Context;ILmn;IIZ)Lmn;

    move-result-object v5

    const v16, 0x7f0700e8

    move/from16 v1, v17

    move-object v2, v5

    move/from16 v4, v16

    move-object/from16 v23, v5

    move v5, v11

    .line 22
    invoke-static/range {v0 .. v5}, Lic;->z(Landroid/content/Context;ILmn;IIZ)Lmn;

    move-result-object v5

    const v17, 0x7f0700e9

    move/from16 v1, v16

    move-object v2, v5

    move/from16 v4, v17

    move-object/from16 v24, v5

    move v5, v11

    .line 23
    invoke-static/range {v0 .. v5}, Lic;->z(Landroid/content/Context;ILmn;IIZ)Lmn;

    move-result-object v5

    const v16, 0x7f0700ea

    move/from16 v1, v17

    move-object v2, v5

    move/from16 v4, v16

    move-object/from16 v25, v5

    move v5, v11

    .line 24
    invoke-static/range {v0 .. v5}, Lic;->z(Landroid/content/Context;ILmn;IIZ)Lmn;

    move-result-object v5

    const v17, 0x7f0700eb

    move/from16 v1, v16

    move-object v2, v5

    move/from16 v4, v17

    move-object/from16 v26, v5

    move v5, v11

    .line 25
    invoke-static/range {v0 .. v5}, Lic;->z(Landroid/content/Context;ILmn;IIZ)Lmn;

    move-result-object v5

    const v16, 0x7f0700ec

    move/from16 v1, v17

    move-object v2, v5

    move/from16 v4, v16

    move-object/from16 v27, v5

    move v5, v11

    .line 26
    invoke-static/range {v0 .. v5}, Lic;->z(Landroid/content/Context;ILmn;IIZ)Lmn;

    move-result-object v5

    const v17, 0x7f0700ed

    move/from16 v1, v16

    move-object v2, v5

    move/from16 v4, v17

    move-object/from16 v28, v5

    move v5, v11

    .line 27
    invoke-static/range {v0 .. v5}, Lic;->z(Landroid/content/Context;ILmn;IIZ)Lmn;

    move-result-object v11

    const v16, 0x7f07010b

    const/16 v29, 0x1

    move/from16 v1, v17

    move-object v2, v11

    move/from16 v4, v16

    move/from16 v5, v29

    .line 28
    invoke-static/range {v0 .. v5}, Lic;->z(Landroid/content/Context;ILmn;IIZ)Lmn;

    move-result-object v5

    const v17, 0x7f07010c

    move/from16 v1, v16

    move-object v2, v5

    move/from16 v4, v17

    move-object/from16 v30, v5

    move/from16 v5, v29

    .line 29
    invoke-static/range {v0 .. v5}, Lic;->z(Landroid/content/Context;ILmn;IIZ)Lmn;

    move-result-object v5

    const v16, 0x7f07010d

    move/from16 v1, v17

    move-object v2, v5

    move/from16 v4, v16

    move-object/from16 v31, v5

    move/from16 v5, v29

    .line 30
    invoke-static/range {v0 .. v5}, Lic;->z(Landroid/content/Context;ILmn;IIZ)Lmn;

    move-result-object v5

    const v17, 0x7f07010e

    move/from16 v1, v16

    move-object v2, v5

    move/from16 v4, v17

    move-object/from16 v32, v5

    move/from16 v5, v29

    .line 31
    invoke-static/range {v0 .. v5}, Lic;->z(Landroid/content/Context;ILmn;IIZ)Lmn;

    move-result-object v5

    const v16, 0x7f07010f

    move/from16 v1, v17

    move-object v2, v5

    move/from16 v4, v16

    move-object/from16 v33, v5

    move/from16 v5, v29

    .line 32
    invoke-static/range {v0 .. v5}, Lic;->z(Landroid/content/Context;ILmn;IIZ)Lmn;

    move-result-object v5

    const v17, 0x7f070110

    move/from16 v1, v16

    move-object v2, v5

    move/from16 v4, v17

    move-object/from16 v34, v5

    move/from16 v5, v29

    .line 33
    invoke-static/range {v0 .. v5}, Lic;->z(Landroid/content/Context;ILmn;IIZ)Lmn;

    move-result-object v5

    const v16, 0x7f070111

    move/from16 v1, v17

    move-object v2, v5

    move/from16 v4, v16

    move-object/from16 v35, v5

    move/from16 v5, v29

    .line 34
    invoke-static/range {v0 .. v5}, Lic;->z(Landroid/content/Context;ILmn;IIZ)Lmn;

    move-result-object v5

    const v17, 0x7f070112

    move/from16 v1, v16

    move-object v2, v5

    move/from16 v4, v17

    move-object/from16 v36, v5

    move/from16 v5, v29

    .line 35
    invoke-static/range {v0 .. v5}, Lic;->z(Landroid/content/Context;ILmn;IIZ)Lmn;

    move-result-object v5

    const v16, 0x7f070113

    move/from16 v1, v17

    move-object v2, v5

    move/from16 v4, v16

    move-object/from16 v37, v5

    move/from16 v5, v29

    .line 36
    invoke-static/range {v0 .. v5}, Lic;->z(Landroid/content/Context;ILmn;IIZ)Lmn;

    move-result-object v5

    const v17, 0x7f070114

    move/from16 v1, v16

    move-object v2, v5

    move/from16 v4, v17

    move-object/from16 v38, v5

    move/from16 v5, v29

    .line 37
    invoke-static/range {v0 .. v5}, Lic;->z(Landroid/content/Context;ILmn;IIZ)Lmn;

    move-result-object v5

    const v16, 0x7f070115

    const/16 v29, 0x0

    move/from16 v1, v17

    move-object v2, v5

    move/from16 v4, v16

    move-object/from16 v39, v5

    move/from16 v5, v29

    .line 38
    invoke-static/range {v0 .. v5}, Lic;->z(Landroid/content/Context;ILmn;IIZ)Lmn;

    move-result-object v5

    const v17, 0x7f070116

    move/from16 v1, v16

    move-object v2, v5

    move/from16 v4, v17

    move-object/from16 v40, v5

    move/from16 v5, v29

    .line 39
    invoke-static/range {v0 .. v5}, Lic;->z(Landroid/content/Context;ILmn;IIZ)Lmn;

    move-result-object v5

    const v16, 0x7f070117

    const/16 v29, 0x1

    move/from16 v1, v17

    move-object v2, v5

    move/from16 v4, v16

    move-object/from16 v41, v5

    move/from16 v5, v29

    .line 40
    invoke-static/range {v0 .. v5}, Lic;->z(Landroid/content/Context;ILmn;IIZ)Lmn;

    move-result-object v5

    const v17, 0x7f070118

    move/from16 v1, v16

    move-object v2, v5

    move/from16 v4, v17

    move-object/from16 v42, v5

    move/from16 v5, v29

    .line 41
    invoke-static/range {v0 .. v5}, Lic;->z(Landroid/content/Context;ILmn;IIZ)Lmn;

    move-result-object v5

    const v16, 0x7f070119

    move/from16 v1, v17

    move-object v2, v5

    move/from16 v4, v16

    move-object/from16 v43, v5

    move/from16 v5, v29

    .line 42
    invoke-static/range {v0 .. v5}, Lic;->z(Landroid/content/Context;ILmn;IIZ)Lmn;

    move-result-object v5

    const v17, 0x7f07011a

    move/from16 v1, v16

    move-object v2, v5

    move/from16 v4, v17

    move-object/from16 v44, v5

    move/from16 v5, v29

    .line 43
    invoke-static/range {v0 .. v5}, Lic;->z(Landroid/content/Context;ILmn;IIZ)Lmn;

    move-result-object v5

    const v16, 0x7f07011b

    move/from16 v1, v17

    move-object v2, v5

    move/from16 v4, v16

    move-object/from16 v45, v5

    move/from16 v5, v29

    .line 44
    invoke-static/range {v0 .. v5}, Lic;->z(Landroid/content/Context;ILmn;IIZ)Lmn;

    move-result-object v5

    const v4, 0x7f07011c

    move/from16 v1, v16

    move-object v2, v5

    const v16, 0x7f07011c

    move/from16 v4, v16

    move-object v14, v5

    move/from16 v5, v29

    .line 45
    invoke-static/range {v0 .. v5}, Lic;->z(Landroid/content/Context;ILmn;IIZ)Lmn;

    move-result-object v0

    const v1, 0x7f07011c

    .line 46
    invoke-static {v6, v1}, Lc2;->l(Landroid/content/Context;I)Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmn;->i(Landroid/graphics/Path;)V

    .line 47
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v18

    .line 49
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v30

    .line 50
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v31

    .line 51
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v32

    .line 52
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v33

    .line 53
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v19

    .line 54
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v20

    .line 55
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v21

    .line 56
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v22

    .line 57
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v34

    .line 58
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v35

    .line 59
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v36

    .line 60
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v37

    .line 61
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v23

    .line 62
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v24

    .line 63
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v25

    .line 64
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v26

    .line 65
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v38

    .line 66
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v39

    .line 67
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v42

    .line 68
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v43

    .line 69
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v27

    .line 70
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v28

    .line 71
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v44

    .line 73
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v45

    .line 74
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v40

    .line 75
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v41

    .line 76
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 80
    invoke-virtual {v9, v10}, Lnn;->d(Ljava/util/List;)V

    .line 81
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 84
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhq;

    .line 85
    invoke-virtual {v2, v6}, Lfq;->b(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 86
    :cond_1
    iget-object v3, v2, Lfq;->h:Ljava/lang/String;

    invoke-static {v3}, Ldq;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 87
    new-instance v4, Lmn;

    invoke-direct {v4}, Lmn;-><init>()V

    .line 88
    iget v5, v2, Lfq;->b:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4, v5}, Lmn;->j(Z)V

    .line 89
    invoke-virtual {v4, v2}, Lmn;->k(Lhq;)V

    .line 90
    invoke-virtual {v4, v7}, Lmn;->h(I)V

    .line 91
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    sget-object v3, Lkn;->a:Lkn;

    invoke-virtual {v5, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 93
    array-length v5, v3

    if-lez v5, :cond_3

    const/4 v5, 0x0

    .line 94
    aget-object v3, v3, v5

    .line 95
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 96
    invoke-virtual {v4, v3}, Lmn;->l(Ljava/lang/String;)V

    .line 97
    invoke-static {v3}, Lc2;->n(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v4, v3}, Lmn;->i(Landroid/graphics/Path;)V

    .line 98
    :cond_3
    invoke-virtual {v2}, Lhq;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 99
    invoke-virtual {v2}, Lhq;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v3, Lnn;

    invoke-direct {v3}, Lnn;-><init>()V

    .line 101
    invoke-virtual {v2}, Lhq;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lnn;->e(Ljava/lang/String;)V

    .line 102
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v2}, Lnn;->d(Ljava/util/List;)V

    .line 103
    invoke-virtual {v3}, Lnn;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnn;

    .line 106
    invoke-virtual {v2}, Lhq;->f()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lnn;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 107
    invoke-virtual {v5}, Lnn;->b()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    return-object v8
.end method
