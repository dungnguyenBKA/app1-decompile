.class public Ls4;
.super Lx4;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls4$b;,
        Ls4$c;
    }
.end annotation


# instance fields
.field private c:Ls4$b;

.field private d:Landroid/content/Context;

.field private e:Landroid/animation/ArgbEvaluator;

.field final f:Landroid/graphics/drawable/Drawable$Callback;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0}, Ls4;-><init>(Landroid/content/Context;Ls4$b;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ls4$b;Landroid/content/res/Resources;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lx4;-><init>()V

    const/4 p2, 0x0

    .line 3
    iput-object p2, p0, Ls4;->e:Landroid/animation/ArgbEvaluator;

    .line 4
    new-instance p3, Ls4$a;

    invoke-direct {p3, p0}, Ls4$a;-><init>(Ls4;)V

    iput-object p3, p0, Ls4;->f:Landroid/graphics/drawable/Drawable$Callback;

    .line 5
    iput-object p1, p0, Ls4;->d:Landroid/content/Context;

    .line 6
    new-instance p1, Ls4$b;

    invoke-direct {p1, p2, p3, p2}, Ls4$b;-><init>(Ls4$b;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V

    iput-object p1, p0, Ls4;->c:Ls4$b;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Ls4;
    .locals 2

    .line 1
    new-instance v0, Ls4;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, p0, v1, v1}, Ls4;-><init>(Landroid/content/Context;Ls4$b;Landroid/content/res/Resources;)V

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Ls4;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v0
.end method

.method private b(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-direct {p0, v2}, Ls4;->b(Landroid/animation/Animator;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, p1, Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    .line 6
    check-cast p1, Landroid/animation/ObjectAnimator;

    .line 7
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fillColor"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "strokeColor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    :cond_1
    iget-object v0, p0, Ls4;->e:Landroid/animation/ArgbEvaluator;

    if-nez v0, :cond_2

    .line 10
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Ls4;->e:Landroid/animation/ArgbEvaluator;

    .line 11
    :cond_2
    iget-object v0, p0, Ls4;->e:Landroid/animation/ArgbEvaluator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    :cond_0
    return-void
.end method

.method public canApplyTheme()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Ls4;->c:Ls4$b;

    iget-object v0, v0, Ls4$b;->b:Ly4;

    invoke-virtual {v0, p1}, Ly4;->draw(Landroid/graphics/Canvas;)V

    .line 4
    iget-object p1, p0, Ls4;->c:Ls4$b;

    iget-object p1, p1, Ls4$b;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Ls4;->c:Ls4$b;

    iget-object v0, v0, Ls4$b;->b:Ly4;

    invoke-virtual {v0}, Ly4;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Ls4;->c:Ls4$b;

    iget v1, v1, Ls4$b;->a:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 3

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4
    :cond_1
    iget-object v0, p0, Ls4;->c:Ls4$b;

    iget-object v0, v0, Ls4$b;->b:Ly4;

    invoke-virtual {v0}, Ly4;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Ls4$c;

    iget-object v1, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1}, Ls4$c;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Ls4;->c:Ls4$b;

    iget-object v0, v0, Ls4$b;->b:Ly4;

    invoke-virtual {v0}, Ly4;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Ls4;->c:Ls4$b;

    iget-object v0, v0, Ls4$b;->b:Ly4;

    invoke-virtual {v0}, Ly4;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Ls4;->c:Ls4$b;

    iget-object v0, v0, Ls4$b;->b:Ly4;

    invoke-virtual {v0}, Ly4;->getOpacity()I

    move-result v0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, p1, p2, p3, v0}, Ls4;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 1
    iget-object v0, v1, Lx4;->b:Landroid/graphics/drawable/Drawable;

    const/16 v6, 0x15

    if-eqz v0, :cond_1

    .line 2
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v6, :cond_0

    .line 3
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    :goto_0
    return-void

    .line 5
    :cond_1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 6
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    :goto_1
    if-eq v0, v8, :cond_e

    .line 7
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-ge v9, v7, :cond_2

    const/4 v9, 0x3

    if-eq v0, v9, :cond_e

    :cond_2
    const/4 v9, 0x2

    if-ne v0, v9, :cond_d

    .line 8
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v10, "animated-vector"

    .line 9
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_8

    .line 10
    sget-object v0, Lr4;->e:[I

    .line 11
    invoke-static {v2, v5, v4, v0}, Lc1;->n(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 12
    invoke-virtual {v10, v11, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_7

    .line 13
    sget-object v12, Ly4;->k:Landroid/graphics/PorterDuff$Mode;

    const-string v12, "parser error"

    const-string v13, "VectorDrawableCompat"

    .line 14
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x18

    const/4 v6, 0x0

    if-lt v14, v15, :cond_3

    .line 15
    new-instance v9, Ly4;

    invoke-direct {v9}, Ly4;-><init>()V

    .line 16
    invoke-static {v2, v0, v5}, Lc1;->c(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v9, Lx4;->b:Landroid/graphics/drawable/Drawable;

    .line 17
    new-instance v0, Ly4$i;

    iget-object v12, v9, Lx4;->b:Landroid/graphics/drawable/Drawable;

    .line 18
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v12

    invoke-direct {v0, v12}, Ly4$i;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    goto :goto_4

    .line 19
    :cond_3
    :try_start_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v14

    .line 21
    :goto_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    if-eq v15, v9, :cond_4

    if-eq v15, v8, :cond_4

    goto :goto_2

    :cond_4
    if-ne v15, v9, :cond_5

    .line 22
    invoke-static {v2, v0, v14, v5}, Ly4;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Ly4;

    move-result-object v9

    goto :goto_4

    .line 23
    :cond_5
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v9, "No start tag found"

    invoke-direct {v0, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 24
    invoke-static {v13, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_1
    move-exception v0

    .line 25
    invoke-static {v13, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    move-object v9, v6

    .line 26
    :goto_4
    invoke-virtual {v9, v11}, Ly4;->c(Z)V

    .line 27
    iget-object v0, v1, Ls4;->f:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 28
    iget-object v0, v1, Ls4;->c:Ls4$b;

    iget-object v0, v0, Ls4$b;->b:Ly4;

    if-eqz v0, :cond_6

    .line 29
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 30
    :cond_6
    iget-object v0, v1, Ls4;->c:Ls4$b;

    iput-object v9, v0, Ls4$b;->b:Ly4;

    .line 31
    :cond_7
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_6

    :cond_8
    const-string v6, "target"

    .line 32
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 33
    sget-object v0, Lr4;->f:[I

    .line 34
    invoke-virtual {v2, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 35
    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 36
    invoke-virtual {v0, v8, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    if-eqz v9, :cond_c

    .line 37
    iget-object v10, v1, Ls4;->d:Landroid/content/Context;

    if-eqz v10, :cond_b

    .line 38
    invoke-static {v10, v9}, Lt4;->f(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v9

    .line 39
    iget-object v10, v1, Ls4;->c:Ls4$b;

    iget-object v10, v10, Ls4$b;->b:Ly4;

    invoke-virtual {v10, v6}, Ly4;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 40
    invoke-virtual {v9, v10}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 41
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-ge v10, v11, :cond_9

    .line 42
    invoke-direct {v1, v9}, Ls4;->b(Landroid/animation/Animator;)V

    .line 43
    :cond_9
    iget-object v10, v1, Ls4;->c:Ls4$b;

    iget-object v12, v10, Ls4$b;->d:Ljava/util/ArrayList;

    if-nez v12, :cond_a

    .line 44
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v10, Ls4$b;->d:Ljava/util/ArrayList;

    .line 45
    iget-object v10, v1, Ls4;->c:Ls4$b;

    new-instance v12, Lx;

    invoke-direct {v12}, Lx;-><init>()V

    iput-object v12, v10, Ls4$b;->e:Lx;

    .line 46
    :cond_a
    iget-object v10, v1, Ls4;->c:Ls4$b;

    iget-object v10, v10, Ls4$b;->d:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v10, v1, Ls4;->c:Ls4$b;

    iget-object v10, v10, Ls4$b;->e:Lx;

    invoke-virtual {v10, v9, v6}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 48
    :cond_b
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Context can\'t be null when inflating animators"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/16 v11, 0x15

    .line 50
    :goto_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_7

    :cond_d
    :goto_6
    const/16 v11, 0x15

    .line 51
    :goto_7
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/16 v6, 0x15

    goto/16 :goto_1

    .line 52
    :cond_e
    iget-object v0, v1, Ls4;->c:Ls4$b;

    .line 53
    iget-object v2, v0, Ls4$b;->c:Landroid/animation/AnimatorSet;

    if-nez v2, :cond_f

    .line 54
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, v0, Ls4$b;->c:Landroid/animation/AnimatorSet;

    .line 55
    :cond_f
    iget-object v2, v0, Ls4$b;->c:Landroid/animation/AnimatorSet;

    iget-object v0, v0, Ls4$b;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Ls4;->c:Ls4$b;

    iget-object v0, v0, Ls4$b;->b:Ly4;

    invoke-virtual {v0}, Ly4;->isAutoMirrored()Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Ls4;->c:Ls4$b;

    iget-object v0, v0, Ls4$b;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Ls4;->c:Ls4$b;

    iget-object v0, v0, Ls4$b;->b:Ly4;

    invoke-virtual {v0}, Ly4;->isStateful()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Ls4;->c:Ls4$b;

    iget-object v0, v0, Ls4$b;->b:Ly4;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Ls4;->c:Ls4$b;

    iget-object v0, v0, Ls4$b;->b:Ly4;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    return p1
.end method

.method protected onStateChange([I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Ls4;->c:Ls4$b;

    iget-object v0, v0, Ls4$b;->b:Ly4;

    invoke-virtual {v0, p1}, Ly4;->setState([I)Z

    move-result p1

    return p1
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Ls4;->c:Ls4$b;

    iget-object v0, v0, Ls4$b;->b:Ly4;

    invoke-virtual {v0, p1}, Ly4;->setAlpha(I)V

    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Ls4;->c:Ls4$b;

    iget-object v0, v0, Ls4$b;->b:Ly4;

    invoke-virtual {v0, p1}, Ly4;->setAutoMirrored(Z)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Ls4;->c:Ls4$b;

    iget-object v0, v0, Ls4$b;->b:Ly4;

    invoke-virtual {v0, p1}, Ly4;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    :cond_0
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1, p2}, Landroidx/core/graphics/drawable/a;->c(Landroid/graphics/drawable/Drawable;FF)V

    :cond_0
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1, p2, p3, p4}, Landroidx/core/graphics/drawable/a;->d(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_0
    return-void
.end method

.method public setTint(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->f(Landroid/graphics/drawable/Drawable;I)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Ls4;->c:Ls4$b;

    iget-object v0, v0, Ls4$b;->b:Ly4;

    invoke-virtual {v0, p1}, Ly4;->setTint(I)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Ls4;->c:Ls4$b;

    iget-object v0, v0, Ls4$b;->b:Ly4;

    invoke-virtual {v0, p1}, Ly4;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->h(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Ls4;->c:Ls4$b;

    iget-object v0, v0, Ls4$b;->b:Ly4;

    invoke-virtual {v0, p1}, Ly4;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Ls4;->c:Ls4$b;

    iget-object v0, v0, Ls4$b;->b:Ly4;

    invoke-virtual {v0, p1, p2}, Ly4;->setVisible(ZZ)Z

    .line 4
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Ls4;->c:Ls4$b;

    iget-object v0, v0, Ls4$b;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Ls4;->c:Ls4$b;

    iget-object v0, v0, Ls4$b;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Ls4;->c:Ls4$b;

    iget-object v0, v0, Ls4$b;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    return-void
.end method
