.class public Lxq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lxq;->a:Ljava/util/List;

    const-string v1, "English"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "Dansk"

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "Deutsch"

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "Espa\u00f1ol"

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "\u0641\u0627\u0631\u0633\u06cc"

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "Fran\u00e7ais"

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "\u0939\u093f\u0928\u094d\u0926\u0940"

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "Italiano"

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "\u65e5\u672c\u8a9e"

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "\ud55c\uad6d\uc5b4"

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "Bahasa Melayu"

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "Nederlands"

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "Polski"

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "Portugu\u00eas"

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "Rom\u00e2n\u0103"

    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "\u0420\u0443\u0441\u0441\u043a\u0438\u0439"

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "Sloven\u010dina"

    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "Svenska"

    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "\u0423\u043a\u0440\u0430\u0457\u043d\u0441\u044c\u043a\u0430"

    .line 20
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "\u0627\u0644\u0639\u0631\u0628\u064a\u0629"

    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "\u7b80\u4f53\u4e2d\u6587"

    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "\u7e41\u9ad4\u4e2d\u6587"

    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "Bahasa Indonesia"

    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "\u0e44\u0e17\u0e22"

    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "T\u00fcrk\u00e7e"

    .line 26
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "Ti\u1ebfng Vi\u1ec7t"

    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "\u010ce\u0161tina"

    .line 28
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;I)Landroid/content/Context;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2
    invoke-static {p0, p1}, Lxq;->c(Landroid/content/Context;I)Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt p1, v1, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "LanguageUtils"

    const-string v1, "changeLanguage"

    .line 6
    invoke-static {v0, v1, p1}, Lem;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lxq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_1

    if-gez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static c(Landroid/content/Context;I)Ljava/util/Locale;
    .locals 49

    move/from16 v0, p1

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "\u7e41\u9ad4\u4e2d\u6587"

    const-string v3, "\u7b80\u4f53\u4e2d\u6587"

    const-string v4, "Nederlands"

    const-string v5, "\u010ce\u0161tina"

    const-string v6, "Espa\u00f1ol"

    const-string v7, "Dansk"

    const-string v8, "English"

    const-string v9, "\ud55c\uad6d\uc5b4"

    const-string v10, "\u65e5\u672c\u8a9e"

    const-string v11, "\u0e44\u0e17\u0e22"

    const-string v12, "Svenska"

    const-string v13, "Sloven\u010dina"

    const-string v14, "\u0423\u043a\u0440\u0430\u0457\u043d\u0441\u044c\u043a\u0430"

    const-string v15, "Deutsch"

    move-object/from16 v16, v15

    const-string v15, "Portugu\u00eas"

    move-object/from16 v17, v15

    const-string v15, "\u0420\u0443\u0441\u0441\u043a\u0438\u0439"

    move-object/from16 v18, v15

    const-string v15, "Fran\u00e7ais"

    move-object/from16 v19, v15

    const-string v15, "T\u00fcrk\u00e7e"

    move-object/from16 v20, v15

    const-string v15, "Rom\u00e2n\u0103"

    move-object/from16 v21, v15

    const-string v15, "Bahasa Melayu"

    move-object/from16 v22, v15

    const-string v15, "Polski"

    move-object/from16 v23, v15

    const-string v15, "\u0627\u0644\u0639\u0631\u0628\u064a\u0629"

    move-object/from16 v24, v15

    const-string v15, "uk"

    move-object/from16 v25, v14

    const-string v14, "tr"

    move-object/from16 v26, v13

    const-string v13, "sv"

    move-object/from16 v27, v12

    const-string v12, "sk"

    move-object/from16 v28, v11

    const-string v11, "ru"

    move-object/from16 v29, v10

    const-string v10, "ro"

    move-object/from16 v30, v9

    const-string v9, "PT"

    move-object/from16 v31, v8

    const-string v8, "pl"

    move-object/from16 v32, v7

    const-string v7, "nl"

    move-object/from16 v33, v6

    const-string v6, "ms"

    move-object/from16 v34, v5

    const-string v5, "it"

    move-object/from16 v35, v4

    const-string v4, "in"

    move-object/from16 v36, v3

    const-string v3, "hi"

    move-object/from16 v37, v2

    const-string v2, "fa"

    move-object/from16 v38, v2

    const-string v2, "es"

    move-object/from16 v39, v14

    const-string v14, "cs"

    move-object/from16 v40, v14

    const-string v14, "ar"

    move-object/from16 v41, v4

    const-string v4, "da"

    move-object/from16 v42, v1

    const-string v1, "vi"

    move-object/from16 v43, v1

    const-string v1, "th"

    move-object/from16 v44, v1

    const-string v1, "pt"

    if-gez v0, :cond_1b

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v45, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v46, v14

    invoke-virtual/range {v45 .. v45}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v1, v45

    goto/16 :goto_0

    .line 4
    :cond_0
    new-instance v14, Ljava/util/Locale;

    invoke-direct {v14, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 5
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v32

    goto/16 :goto_1

    .line 6
    :cond_1
    sget-object v4, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7
    sget-object v0, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    move-object/from16 v2, v16

    goto/16 :goto_1

    .line 8
    :cond_2
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v33

    goto/16 :goto_1

    .line 10
    :cond_3
    sget-object v2, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11
    sget-object v0, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    move-object/from16 v2, v19

    goto/16 :goto_1

    .line 12
    :cond_4
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 13
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const-string v2, "\u0939\u093f\u0928\u094d\u0926\u0940"

    goto/16 :goto_1

    .line 14
    :cond_5
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 15
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const-string v2, "Italiano"

    goto/16 :goto_1

    .line 16
    :cond_6
    sget-object v2, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 17
    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    move-object/from16 v2, v29

    goto/16 :goto_1

    .line 18
    :cond_7
    sget-object v2, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 19
    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    move-object/from16 v2, v30

    goto/16 :goto_1

    .line 20
    :cond_8
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 21
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v22

    goto/16 :goto_1

    .line 22
    :cond_9
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 23
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v35

    goto/16 :goto_1

    .line 24
    :cond_a
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 25
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v23

    goto/16 :goto_1

    .line 26
    :cond_b
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v1, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 27
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v1, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v17

    goto/16 :goto_1

    .line 28
    :cond_c
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 29
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 30
    :cond_d
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 31
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v18

    goto/16 :goto_1

    .line 32
    :cond_e
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 33
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v26

    goto/16 :goto_1

    .line 34
    :cond_f
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v13}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 35
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v13}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v27

    goto/16 :goto_1

    .line 36
    :cond_10
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v15}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 37
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v15}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v25

    goto/16 :goto_1

    .line 38
    :cond_11
    new-instance v1, Ljava/util/Locale;

    move-object/from16 v14, v46

    invoke-direct {v1, v14}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 39
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v14}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v24

    goto/16 :goto_1

    :cond_12
    const-string v1, "zh"

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 41
    invoke-virtual/range {v42 .. v42}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 42
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    move-object/from16 v2, v36

    goto/16 :goto_1

    .line 43
    :cond_13
    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    move-object/from16 v2, v37

    goto/16 :goto_1

    .line 44
    :cond_14
    new-instance v1, Ljava/util/Locale;

    move-object/from16 v2, v41

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 45
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const-string v2, "Indonesia"

    goto/16 :goto_1

    .line 46
    :cond_15
    new-instance v1, Ljava/util/Locale;

    move-object/from16 v2, v44

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 47
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v28

    goto/16 :goto_1

    .line 48
    :cond_16
    new-instance v1, Ljava/util/Locale;

    move-object/from16 v2, v39

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 49
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v20

    goto :goto_1

    .line 50
    :cond_17
    new-instance v1, Ljava/util/Locale;

    move-object/from16 v2, v43

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 51
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const-string v2, "Ti\u1ebfng Vi\u1ec7t"

    goto :goto_1

    .line 52
    :cond_18
    new-instance v1, Ljava/util/Locale;

    move-object/from16 v2, v40

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 53
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v34

    goto :goto_1

    .line 54
    :cond_19
    new-instance v1, Ljava/util/Locale;

    move-object/from16 v2, v38

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 55
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const-string v2, "\u0641\u0627\u0631\u0633\u06cc"

    goto :goto_1

    :cond_1a
    move-object/from16 v1, v42

    :goto_0
    move-object v0, v1

    move-object/from16 v2, v31

    .line 56
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "language"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object v0

    :cond_1b
    move-object/from16 v42, v11

    move-object/from16 v46, v14

    move-object/from16 v14, v43

    move-object/from16 v11, v44

    move-object/from16 v43, v9

    move-object/from16 v47, v39

    move-object/from16 v39, v6

    move-object/from16 v6, v38

    move-object/from16 v38, v8

    move-object/from16 v8, v41

    move-object/from16 v41, v47

    move-object/from16 v48, v40

    move-object/from16 v40, v10

    move-object/from16 v10, v48

    .line 57
    sget-object v9, Lxq;->a:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    const/16 v44, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v45

    sparse-switch v45, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v0, "\u0641\u0627\u0631\u0633\u06cc"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_2

    :cond_1c
    const/16 v44, 0x26

    goto/16 :goto_2

    :sswitch_1
    const-string v0, "Portugu\u00eas (Brasil)"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_2

    :cond_1d
    const/16 v44, 0x25

    goto/16 :goto_2

    :sswitch_2
    const-string v0, "\u043c\u0430\u043a\u0435\u0434\u043e\u043d\u0441\u043a\u0438"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_2

    :cond_1e
    const/16 v44, 0x24

    goto/16 :goto_2

    :sswitch_3
    const-string v0, "\u0421\u0440\u043f\u0441\u043a\u0430"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_2

    :cond_1f
    const/16 v44, 0x23

    goto/16 :goto_2

    :sswitch_4
    const-string v0, "Ti\u1ebfng Vi\u1ec7t"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_2

    :cond_20
    const/16 v44, 0x22

    goto/16 :goto_2

    :sswitch_5
    const-string v0, "\u0939\u093f\u0928\u094d\u0926\u0940"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_2

    :cond_21
    const/16 v44, 0x21

    goto/16 :goto_2

    :sswitch_6
    const-string v0, "Italiano"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_2

    :cond_22
    const/16 v44, 0x20

    goto/16 :goto_2

    :sswitch_7
    move-object/from16 v0, v37

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto/16 :goto_2

    :cond_23
    const/16 v44, 0x1f

    goto/16 :goto_2

    :sswitch_8
    const-string v0, "\u0e20\u0e32\u0e29\u0e32\u0e44\u0e17\u0e22"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto/16 :goto_2

    :cond_24
    const/16 v44, 0x1e

    goto/16 :goto_2

    :sswitch_9
    move-object/from16 v0, v36

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_2

    :cond_25
    const/16 v44, 0x1d

    goto/16 :goto_2

    :sswitch_a
    const-string v0, "\u0627\u0631\u062f\u0648 \u0632\u0628\u0627\u0646"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_2

    :cond_26
    const/16 v44, 0x1c

    goto/16 :goto_2

    :sswitch_b
    move-object/from16 v0, v35

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_2

    :cond_27
    const/16 v44, 0x1b

    goto/16 :goto_2

    :sswitch_c
    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto/16 :goto_2

    :cond_28
    const/16 v44, 0x1a

    goto/16 :goto_2

    :sswitch_d
    const-string v0, "Bahasa Indonesia"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto/16 :goto_2

    :cond_29
    const/16 v44, 0x19

    goto/16 :goto_2

    :sswitch_e
    move-object/from16 v0, v33

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto/16 :goto_2

    :cond_2a
    const/16 v44, 0x18

    goto/16 :goto_2

    :sswitch_f
    move-object/from16 v0, v32

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto/16 :goto_2

    :cond_2b
    const/16 v44, 0x17

    goto/16 :goto_2

    :sswitch_10
    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto/16 :goto_2

    :cond_2c
    const/16 v44, 0x16

    goto/16 :goto_2

    :sswitch_11
    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto/16 :goto_2

    :cond_2d
    const/16 v44, 0x15

    goto/16 :goto_2

    :sswitch_12
    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto/16 :goto_2

    :cond_2e
    const/16 v44, 0x14

    goto/16 :goto_2

    :sswitch_13
    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_2

    :cond_2f
    const/16 v44, 0x13

    goto/16 :goto_2

    :sswitch_14
    const-string v0, "Vi\u1ec7t"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto/16 :goto_2

    :cond_30
    const/16 v44, 0x12

    goto/16 :goto_2

    :sswitch_15
    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto/16 :goto_2

    :cond_31
    const/16 v44, 0x11

    goto/16 :goto_2

    :sswitch_16
    const-string v0, "shqiptar"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    goto/16 :goto_2

    :cond_32
    const/16 v44, 0x10

    goto/16 :goto_2

    :sswitch_17
    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto/16 :goto_2

    :cond_33
    const/16 v44, 0xf

    goto/16 :goto_2

    :sswitch_18
    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto/16 :goto_2

    :cond_34
    const/16 v44, 0xe

    goto/16 :goto_2

    :sswitch_19
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto/16 :goto_2

    :cond_35
    const/16 v44, 0xd

    goto/16 :goto_2

    :sswitch_1a
    const-string v0, "\u0388\u03bb\u03bb\u03b7\u03bd\u03b9\u03ba\u03ac"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto/16 :goto_2

    :cond_36
    const/16 v44, 0xc

    goto/16 :goto_2

    :sswitch_1b
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto/16 :goto_2

    :cond_37
    const/16 v44, 0xb

    goto/16 :goto_2

    :sswitch_1c
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto/16 :goto_2

    :cond_38
    const/16 v44, 0xa

    goto/16 :goto_2

    :sswitch_1d
    const-string v0, "\u0411\u044a\u043b\u0433\u0430\u0440\u0441\u043a\u0438"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto/16 :goto_2

    :cond_39
    const/16 v44, 0x9

    goto/16 :goto_2

    :sswitch_1e
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto/16 :goto_2

    :cond_3a
    const/16 v44, 0x8

    goto/16 :goto_2

    :sswitch_1f
    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto/16 :goto_2

    :cond_3b
    const/16 v44, 0x7

    goto :goto_2

    :sswitch_20
    const-string v0, "\u05e9\u05e4\u05ea \u05e2\u05d1\u05e8\u05d9\u05ea"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto :goto_2

    :cond_3c
    const/16 v44, 0x6

    goto :goto_2

    :sswitch_21
    const-string v0, "Hrvatska"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_2

    :cond_3d
    const/16 v44, 0x5

    goto :goto_2

    :sswitch_22
    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto :goto_2

    :cond_3e
    const/16 v44, 0x4

    goto :goto_2

    :sswitch_23
    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto :goto_2

    :cond_3f
    const/16 v44, 0x3

    goto :goto_2

    :sswitch_24
    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_2

    :cond_40
    const/16 v44, 0x2

    goto :goto_2

    :sswitch_25
    const-string v0, "Magyar"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto :goto_2

    :cond_41
    const/16 v44, 0x1

    goto :goto_2

    :sswitch_26
    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto :goto_2

    :cond_42
    const/16 v44, 0x0

    :goto_2
    packed-switch v44, :pswitch_data_0

    .line 58
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto/16 :goto_3

    .line 59
    :pswitch_0
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 60
    :pswitch_1
    new-instance v0, Ljava/util/Locale;

    const-string v2, "BR"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 61
    :pswitch_2
    new-instance v0, Ljava/util/Locale;

    const-string v1, "mk"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 62
    :pswitch_3
    new-instance v0, Ljava/util/Locale;

    const-string v1, "sr"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 63
    :pswitch_4
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v14}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 64
    :pswitch_5
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 65
    :pswitch_6
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 66
    :pswitch_7
    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    goto/16 :goto_3

    .line 67
    :pswitch_8
    new-instance v0, Ljava/util/Locale;

    const-string v1, "TH"

    invoke-direct {v0, v11, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 68
    :pswitch_9
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    goto/16 :goto_3

    .line 69
    :pswitch_a
    new-instance v0, Ljava/util/Locale;

    const-string v1, "ur"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 70
    :pswitch_b
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 71
    :pswitch_c
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 72
    :pswitch_d
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 73
    :pswitch_e
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 74
    :pswitch_f
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 75
    :pswitch_10
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    goto/16 :goto_3

    .line 76
    :pswitch_11
    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    goto/16 :goto_3

    .line 77
    :pswitch_12
    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    goto/16 :goto_3

    .line 78
    :pswitch_13
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 79
    :pswitch_14
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v14}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 80
    :pswitch_15
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v13}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 81
    :pswitch_16
    new-instance v0, Ljava/util/Locale;

    const-string v1, "sq"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 82
    :pswitch_17
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 83
    :pswitch_18
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v15}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 84
    :pswitch_19
    sget-object v0, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    goto/16 :goto_3

    .line 85
    :pswitch_1a
    new-instance v0, Ljava/util/Locale;

    const-string v1, "el"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 86
    :pswitch_1b
    new-instance v0, Ljava/util/Locale;

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 87
    :pswitch_1c
    new-instance v0, Ljava/util/Locale;

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 88
    :pswitch_1d
    new-instance v0, Ljava/util/Locale;

    const-string v1, "bg"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 89
    :pswitch_1e
    sget-object v0, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    goto :goto_3

    .line 90
    :pswitch_1f
    new-instance v0, Ljava/util/Locale;

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 91
    :pswitch_20
    new-instance v0, Ljava/util/Locale;

    const-string v1, "iw"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 92
    :pswitch_21
    new-instance v0, Ljava/util/Locale;

    const-string v1, "hr"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 93
    :pswitch_22
    new-instance v0, Ljava/util/Locale;

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 94
    :pswitch_23
    new-instance v0, Ljava/util/Locale;

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 95
    :pswitch_24
    new-instance v0, Ljava/util/Locale;

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 96
    :pswitch_25
    new-instance v0, Ljava/util/Locale;

    const-string v1, "hu"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 97
    :pswitch_26
    new-instance v0, Ljava/util/Locale;

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 98
    :goto_3
    invoke-static/range {p1 .. p1}, Lxq;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-static/range {p0 .. p0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "language"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7fd387ae -> :sswitch_26
        -0x77134ba9 -> :sswitch_25
        -0x712d483c -> :sswitch_24
        -0x6e2de77d -> :sswitch_23
        -0x6dc180f9 -> :sswitch_22
        -0x6b3bc516 -> :sswitch_21
        -0x674816a7 -> :sswitch_20
        -0x62944881 -> :sswitch_1f
        -0x5de8af63 -> :sswitch_1e
        -0x588659a2 -> :sswitch_1d
        -0x46a2fda8 -> :sswitch_1c
        -0x44e0ebd5 -> :sswitch_1b
        -0x423b9fe3 -> :sswitch_1a
        -0x3fd796e8 -> :sswitch_19
        -0x244ba632 -> :sswitch_18
        -0x1fac4a08 -> :sswitch_17
        -0x1180da1e -> :sswitch_16
        -0xa3bece3 -> :sswitch_15
        0x2c5ca0 -> :sswitch_14
        0x37502f -> :sswitch_13
        0x18b8997 -> :sswitch_12
        0x336b443 -> :sswitch_11
        0x3a13250 -> :sswitch_10
        0x3ec0189 -> :sswitch_f
        0xca53eef -> :sswitch_e
        0x15fcbf6a -> :sswitch_d
        0x21043a90 -> :sswitch_c
        0x28d34d4e -> :sswitch_b
        0x32729352 -> :sswitch_a
        0x3957780d -> :sswitch_9
        0x3b660594 -> :sswitch_8
        0x3bb360ed -> :sswitch_7
        0x4331d88f -> :sswitch_6
        0x437ab8e5 -> :sswitch_5
        0x490d2c9d -> :sswitch_4
        0x4994eb57 -> :sswitch_3
        0x49bea9db -> :sswitch_2
        0x4c1ad2b1 -> :sswitch_1
        0x5b04f724 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static d(Landroid/content/Context;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "language"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    sget-object v0, Lxq;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static e(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .line 1
    invoke-static {p0}, Lxq;->d(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lxq;->a(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static f()[Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lxq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
