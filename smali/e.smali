.class public Le;
.super Lh;
.source "SourceFile"

# interfaces
.implements Landroidx/core/graphics/drawable/b;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedAPI"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le$f;,
        Le$c;,
        Le$d;,
        Le$e;,
        Le$b;,
        Le$g;
    }
.end annotation


# instance fields
.field private q:Le$c;

.field private r:Le$g;

.field private s:I

.field private t:I

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Le;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Le;-><init>(Le$c;Landroid/content/res/Resources;)V

    return-void
.end method

.method constructor <init>(Le$c;Landroid/content/res/Resources;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lh;-><init>(Lh$a;)V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Le;->s:I

    .line 4
    iput v0, p0, Le;->t:I

    .line 5
    new-instance v0, Le$c;

    invoke-direct {v0, p1, p0, p2}, Le$c;-><init>(Le$c;Le;Landroid/content/res/Resources;)V

    .line 6
    invoke-super {p0, v0}, Lh;->f(Lf$c;)V

    .line 7
    iput-object v0, p0, Le;->q:Le$c;

    .line 8
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Le;->onStateChange([I)Z

    .line 9
    invoke-virtual {p0}, Le;->jumpToCurrentState()V

    return-void
.end method

.method public static i(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Le;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "animated-selector"

    .line 2
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 3
    new-instance v5, Le;

    const/4 v6, 0x0

    .line 4
    invoke-direct {v5, v6, v6}, Le;-><init>(Le$c;Landroid/content/res/Resources;)V

    .line 5
    sget-object v6, Landroidx/appcompat/resources/R$styleable;->a:[I

    invoke-static {v1, v4, v3, v6}, Lc1;->n(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    const/4 v7, 0x1

    .line 6
    invoke-virtual {v6, v7, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {v5, v8, v7}, Le;->setVisible(ZZ)Z

    .line 7
    iget-object v8, v5, Le;->q:Le$c;

    .line 8
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v9, v10, :cond_0

    .line 9
    iget v9, v8, Lf$c;->d:I

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v10

    or-int/2addr v9, v10

    iput v9, v8, Lf$c;->d:I

    .line 10
    :cond_0
    iget-boolean v9, v8, Lf$c;->i:Z

    const/4 v10, 0x2

    .line 11
    invoke-virtual {v6, v10, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 12
    iput-boolean v9, v8, Lf$c;->i:Z

    .line 13
    iget-boolean v9, v8, Lf$c;->l:Z

    const/4 v11, 0x3

    .line 14
    invoke-virtual {v6, v11, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 15
    iput-boolean v9, v8, Lf$c;->l:Z

    .line 16
    iget v9, v8, Lf$c;->A:I

    const/4 v12, 0x4

    .line 17
    invoke-virtual {v6, v12, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 18
    iput v9, v8, Lf$c;->A:I

    const/4 v9, 0x5

    .line 19
    iget v13, v8, Lf$c;->B:I

    .line 20
    invoke-virtual {v6, v9, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 21
    iput v9, v8, Lf$c;->B:I

    .line 22
    iget-boolean v8, v8, Lf$c;->x:Z

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 23
    invoke-super {v5, v8}, Lf;->setDither(Z)V

    .line 24
    invoke-virtual {v5, v1}, Lf;->g(Landroid/content/res/Resources;)V

    .line 25
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 26
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    add-int/2addr v6, v7

    .line 27
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    if-eq v8, v7, :cond_18

    .line 28
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    if-ge v13, v6, :cond_1

    if-eq v8, v11, :cond_18

    :cond_1
    if-eq v8, v10, :cond_2

    goto :goto_0

    :cond_2
    if-le v13, v6, :cond_3

    goto :goto_0

    .line 29
    :cond_3
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "item"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v10, -0x1

    if-eqz v8, :cond_e

    .line 30
    sget-object v8, Landroidx/appcompat/resources/R$styleable;->b:[I

    invoke-static {v1, v4, v3, v8}, Lc1;->n(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 31
    invoke-virtual {v8, v9, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 32
    invoke-virtual {v8, v7, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    if-lez v7, :cond_4

    .line 33
    invoke-static {}, Landroidx/appcompat/widget/v;->d()Landroidx/appcompat/widget/v;

    move-result-object v10

    invoke-virtual {v10, v0, v7}, Landroidx/appcompat/widget/v;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    .line 34
    :goto_1
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v8

    .line 36
    new-array v10, v8, [I

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v8, :cond_7

    .line 37
    invoke-interface {v3, v14}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v15

    if-eqz v15, :cond_6

    const v12, 0x10100d0

    if-eq v15, v12, :cond_6

    const v12, 0x1010199

    if-eq v15, v12, :cond_6

    add-int/lit8 v12, v13, 0x1

    .line 38
    invoke-interface {v3, v14, v9}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v16

    if-eqz v16, :cond_5

    goto :goto_3

    :cond_5
    neg-int v15, v15

    :goto_3
    aput v15, v10, v13

    move v13, v12

    :cond_6
    add-int/lit8 v14, v14, 0x1

    const/4 v12, 0x4

    goto :goto_2

    .line 39
    :cond_7
    invoke-static {v10, v13}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v8

    const-string v10, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    if-nez v7, :cond_c

    .line 40
    :goto_4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v12, 0x4

    if-ne v7, v12, :cond_8

    goto :goto_4

    :cond_8
    const/4 v12, 0x2

    if-ne v7, v12, :cond_b

    .line 41
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v12, "vector"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 42
    invoke-static/range {p1 .. p4}, Ly4;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Ly4;

    move-result-object v7

    goto :goto_5

    .line 43
    :cond_9
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    if-lt v7, v12, :cond_a

    .line 44
    invoke-static/range {p1 .. p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_5

    .line 45
    :cond_a
    invoke-static/range {p1 .. p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_5

    .line 46
    :cond_b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    invoke-static {v2, v1, v10}, Lic;->o(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_5
    if-eqz v7, :cond_d

    .line 48
    iget-object v10, v5, Le;->q:Le$c;

    .line 49
    invoke-virtual {v10, v7}, Lf$c;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v7

    .line 50
    iget-object v12, v10, Lh$a;->J:[[I

    aput-object v8, v12, v7

    .line 51
    iget-object v8, v10, Le$c;->L:Lf0;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v7, v10}, Lf0;->j(ILjava/lang/Object;)V

    goto/16 :goto_a

    .line 52
    :cond_d
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    invoke-static {v2, v1, v10}, Lic;->o(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_e
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "transition"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 55
    sget-object v7, Landroidx/appcompat/resources/R$styleable;->c:[I

    invoke-static {v1, v4, v3, v7}, Lc1;->n(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    const/4 v8, 0x2

    .line 56
    invoke-virtual {v7, v8, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    const/4 v11, 0x1

    .line 57
    invoke-virtual {v7, v11, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 58
    invoke-virtual {v7, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    if-lez v12, :cond_f

    .line 59
    invoke-static {}, Landroidx/appcompat/widget/v;->d()Landroidx/appcompat/widget/v;

    move-result-object v13

    invoke-virtual {v13, v0, v12}, Landroidx/appcompat/widget/v;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    goto :goto_6

    :cond_f
    const/4 v12, 0x0

    :goto_6
    const/4 v13, 0x3

    .line 60
    invoke-virtual {v7, v13, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    .line 61
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    const-string v7, ": <transition> tag requires a \'drawable\' attribute or child tag defining a drawable"

    if-nez v12, :cond_14

    .line 62
    :goto_7
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    const/4 v15, 0x4

    if-ne v12, v15, :cond_10

    goto :goto_7

    :cond_10
    const/4 v9, 0x2

    if-ne v12, v9, :cond_13

    .line 63
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v12, "animated-vector"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 64
    invoke-static/range {p0 .. p4}, Ls4;->a(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Ls4;

    move-result-object v12

    goto :goto_9

    .line 65
    :cond_11
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    if-lt v9, v12, :cond_12

    .line 66
    invoke-static/range {p1 .. p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto :goto_8

    .line 67
    :cond_12
    invoke-static/range {p1 .. p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    :goto_8
    move-object v12, v9

    goto :goto_9

    .line 68
    :cond_13
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    invoke-static {v2, v1, v7}, Lic;->o(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    const/4 v15, 0x4

    :goto_9
    if-eqz v12, :cond_16

    if-eq v8, v10, :cond_15

    if-eq v11, v10, :cond_15

    .line 70
    iget-object v7, v5, Le;->q:Le$c;

    invoke-virtual {v7, v8, v11, v12, v14}, Le$c;->l(IILandroid/graphics/drawable/Drawable;Z)I

    goto :goto_b

    .line 71
    :cond_15
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": <transition> tag requires \'fromId\' & \'toId\' attributes"

    .line 72
    invoke-static {v2, v1, v3}, Lic;->o(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_16
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    invoke-static {v2, v1, v7}, Lic;->o(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    :goto_a
    const/4 v15, 0x4

    const/4 v7, 0x3

    :goto_b
    const/4 v11, 0x3

    const/4 v7, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v12, 0x4

    goto/16 :goto_0

    .line 75
    :cond_18
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {v5, v0}, Le;->onStateChange([I)Z

    return-object v5

    .line 76
    :cond_19
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": invalid animated-selector tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    goto :goto_d

    :goto_c
    throw v0

    :goto_d
    goto :goto_c
.end method


# virtual methods
.method b()Lf$c;
    .locals 3

    .line 1
    new-instance v0, Le$c;

    iget-object v1, p0, Le;->q:Le$c;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Le$c;-><init>(Le$c;Le;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method f(Lf$c;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lh;->f(Lf$c;)V

    .line 2
    instance-of v0, p1, Le$c;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Le$c;

    iput-object p1, p0, Le;->q:Le$c;

    :cond_0
    return-void
.end method

.method h()Lh$a;
    .locals 3

    .line 1
    new-instance v0, Le$c;

    iget-object v1, p0, Le;->q:Le$c;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Le$c;-><init>(Le$c;Le;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    .line 1
    invoke-super {p0}, Lf;->jumpToCurrentState()V

    .line 2
    iget-object v0, p0, Le;->r:Le$g;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Le$g;->d()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Le;->r:Le$g;

    .line 5
    iget v0, p0, Le;->s:I

    invoke-virtual {p0, v0}, Lf;->e(I)Z

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Le;->s:I

    .line 7
    iput v0, p0, Le;->t:I

    :cond_0
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-boolean v0, p0, Le;->u:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lh;->mutate()Landroid/graphics/drawable/Drawable;

    if-ne p0, p0, :cond_0

    .line 2
    iget-object v0, p0, Le;->q:Le$c;

    invoke-virtual {v0}, Le$c;->i()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Le;->u:Z

    :cond_0
    return-object p0
.end method

.method protected onStateChange([I)Z
    .locals 10

    .line 1
    iget-object v0, p0, Le;->q:Le$c;

    .line 2
    invoke-virtual {v0, p1}, Lh$a;->k([I)I

    move-result v1

    if-ltz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v0, v1}, Lh$a;->k([I)I

    move-result v1

    .line 4
    :goto_0
    invoke-virtual {p0}, Lf;->c()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v0, :cond_9

    .line 5
    iget-object v0, p0, Le;->r:Le$g;

    if-eqz v0, :cond_3

    .line 6
    iget v4, p0, Le;->s:I

    if-ne v1, v4, :cond_1

    :goto_1
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 7
    :cond_1
    iget v4, p0, Le;->t:I

    if-ne v1, v4, :cond_2

    invoke-virtual {v0}, Le$g;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8
    invoke-virtual {v0}, Le$g;->b()V

    .line 9
    iget v0, p0, Le;->t:I

    iput v0, p0, Le;->s:I

    .line 10
    iput v1, p0, Le;->t:I

    goto :goto_1

    .line 11
    :cond_2
    iget v4, p0, Le;->s:I

    .line 12
    invoke-virtual {v0}, Le$g;->d()V

    goto :goto_2

    .line 13
    :cond_3
    invoke-virtual {p0}, Lf;->c()I

    move-result v4

    :goto_2
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Le;->r:Le$g;

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Le;->t:I

    .line 16
    iput v0, p0, Le;->s:I

    .line 17
    iget-object v0, p0, Le;->q:Le$c;

    .line 18
    invoke-virtual {v0, v4}, Le$c;->n(I)I

    move-result v5

    .line 19
    invoke-virtual {v0, v1}, Le$c;->n(I)I

    move-result v6

    if-eqz v6, :cond_8

    if-nez v5, :cond_4

    goto :goto_4

    .line 20
    :cond_4
    invoke-virtual {v0, v5, v6}, Le$c;->o(II)I

    move-result v7

    if-gez v7, :cond_5

    goto :goto_4

    .line 21
    :cond_5
    invoke-virtual {v0, v5, v6}, Le$c;->q(II)Z

    move-result v8

    .line 22
    invoke-virtual {p0, v7}, Lf;->e(I)Z

    .line 23
    invoke-super {p0}, Lf;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 24
    instance-of v9, v7, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v9, :cond_6

    .line 25
    invoke-virtual {v0, v5, v6}, Le$c;->p(II)Z

    move-result v0

    .line 26
    new-instance v5, Le$e;

    check-cast v7, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v5, v7, v0, v8}, Le$e;-><init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V

    goto :goto_3

    .line 27
    :cond_6
    instance-of v0, v7, Ls4;

    if-eqz v0, :cond_7

    .line 28
    new-instance v5, Le$d;

    check-cast v7, Ls4;

    invoke-direct {v5, v7}, Le$d;-><init>(Ls4;)V

    goto :goto_3

    .line 29
    :cond_7
    instance-of v0, v7, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_8

    .line 30
    new-instance v5, Le$b;

    check-cast v7, Landroid/graphics/drawable/Animatable;

    invoke-direct {v5, v7}, Le$b;-><init>(Landroid/graphics/drawable/Animatable;)V

    .line 31
    :goto_3
    invoke-virtual {v5}, Le$g;->c()V

    .line 32
    iput-object v5, p0, Le;->r:Le$g;

    .line 33
    iput v4, p0, Le;->t:I

    .line 34
    iput v1, p0, Le;->s:I

    goto :goto_1

    :cond_8
    :goto_4
    const/4 v0, 0x0

    :goto_5
    if-nez v0, :cond_a

    .line 35
    invoke-virtual {p0, v1}, Lf;->e(I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    .line 36
    :cond_a
    :goto_6
    invoke-super {p0}, Lf;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 37
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v2, p1

    :cond_b
    return v2
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lf;->setVisible(ZZ)Z

    move-result v0

    .line 2
    iget-object v1, p0, Le;->r:Le$g;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {v1}, Le$g;->c()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Le;->jumpToCurrentState()V

    :cond_2
    :goto_0
    return v0
.end method
