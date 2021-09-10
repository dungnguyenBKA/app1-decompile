.class Landroidx/appcompat/widget/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final k:Landroid/graphics/RectF;

.field private static l:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static m:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Z

.field private c:F

.field private d:F

.field private e:F

.field private f:[I

.field private g:Z

.field private h:Landroid/text/TextPaint;

.field private final i:Landroid/widget/TextView;

.field private final j:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/l;->k:Landroid/graphics/RectF;

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/l;->l:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/l;->m:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/appcompat/widget/l;->a:I

    .line 3
    iput-boolean v0, p0, Landroidx/appcompat/widget/l;->b:Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    iput v1, p0, Landroidx/appcompat/widget/l;->c:F

    .line 5
    iput v1, p0, Landroidx/appcompat/widget/l;->d:F

    .line 6
    iput v1, p0, Landroidx/appcompat/widget/l;->e:F

    new-array v1, v0, [I

    .line 7
    iput-object v1, p0, Landroidx/appcompat/widget/l;->f:[I

    .line 8
    iput-boolean v0, p0, Landroidx/appcompat/widget/l;->g:Z

    .line 9
    iput-object p1, p0, Landroidx/appcompat/widget/l;->i:Landroid/widget/TextView;

    .line 10
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/l;->j:Landroid/content/Context;

    return-void
.end method

.method private b([I)[I
    .locals 6

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 4
    aget v4, p1, v3

    if-lez v4, :cond_1

    .line 5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_1

    .line 6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v0, v3, :cond_3

    return-object p1

    .line 8
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 9
    new-array v0, p1, [I

    :goto_1
    if-ge v2, p1, :cond_4

    .line 10
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private c(Landroid/graphics/RectF;)I
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Landroidx/appcompat/widget/l;->f:[I

    array-length v2, v2

    if-eqz v2, :cond_b

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    :goto_0
    if-gt v5, v2, :cond_a

    add-int v6, v5, v2

    .line 2
    div-int/lit8 v6, v6, 0x2

    .line 3
    iget-object v7, v0, Landroidx/appcompat/widget/l;->f:[I

    aget v7, v7, v6

    .line 4
    iget-object v8, v0, Landroidx/appcompat/widget/l;->i:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    .line 5
    iget-object v9, v0, Landroidx/appcompat/widget/l;->i:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 6
    iget-object v10, v0, Landroidx/appcompat/widget/l;->i:Landroid/widget/TextView;

    invoke-interface {v9, v8, v10}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_0

    move-object v8, v9

    .line 7
    :cond_0
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v10, v0, Landroidx/appcompat/widget/l;->i:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMaxLines()I

    move-result v15

    .line 8
    iget-object v10, v0, Landroidx/appcompat/widget/l;->h:Landroid/text/TextPaint;

    if-nez v10, :cond_1

    .line 9
    new-instance v10, Landroid/text/TextPaint;

    invoke-direct {v10}, Landroid/text/TextPaint;-><init>()V

    iput-object v10, v0, Landroidx/appcompat/widget/l;->h:Landroid/text/TextPaint;

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v10}, Landroid/text/TextPaint;->reset()V

    .line 11
    :goto_1
    iget-object v10, v0, Landroidx/appcompat/widget/l;->h:Landroid/text/TextPaint;

    iget-object v11, v0, Landroidx/appcompat/widget/l;->i:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 12
    iget-object v10, v0, Landroidx/appcompat/widget/l;->h:Landroid/text/TextPaint;

    int-to-float v7, v7

    invoke-virtual {v10, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 13
    iget-object v7, v0, Landroidx/appcompat/widget/l;->i:Landroid/widget/TextView;

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const-string v11, "getLayoutAlignment"

    invoke-static {v7, v11, v10}, Landroidx/appcompat/widget/l;->j(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Landroid/text/Layout$Alignment;

    .line 14
    iget v7, v1, Landroid/graphics/RectF;->right:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v13

    const/16 v7, 0x17

    const/4 v12, -0x1

    if-lt v9, v7, :cond_4

    .line 15
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v7

    iget-object v10, v0, Landroidx/appcompat/widget/l;->h:Landroid/text/TextPaint;

    .line 16
    invoke-static {v8, v4, v7, v10, v13}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v7

    .line 17
    invoke-virtual {v7, v14}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v10

    iget-object v11, v0, Landroidx/appcompat/widget/l;->i:Landroid/widget/TextView;

    .line 18
    invoke-virtual {v11}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v11

    iget-object v13, v0, Landroidx/appcompat/widget/l;->i:Landroid/widget/TextView;

    .line 19
    invoke-virtual {v13}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v13

    .line 20
    invoke-virtual {v10, v11, v13}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v10

    iget-object v11, v0, Landroidx/appcompat/widget/l;->i:Landroid/widget/TextView;

    .line 21
    invoke-virtual {v11}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v10

    iget-object v11, v0, Landroidx/appcompat/widget/l;->i:Landroid/widget/TextView;

    .line 22
    invoke-virtual {v11}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v10

    iget-object v11, v0, Landroidx/appcompat/widget/l;->i:Landroid/widget/TextView;

    .line 23
    invoke-virtual {v11}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v10

    if-ne v15, v12, :cond_2

    const v11, 0x7fffffff

    goto :goto_2

    :cond_2
    move v11, v15

    .line 24
    :goto_2
    invoke-virtual {v10, v11}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    const/16 v10, 0x1d

    if-lt v9, v10, :cond_3

    .line 25
    :try_start_0
    iget-object v9, v0, Landroidx/appcompat/widget/l;->i:Landroid/widget/TextView;

    .line 26
    invoke-virtual {v9}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v9

    goto :goto_3

    :cond_3
    iget-object v9, v0, Landroidx/appcompat/widget/l;->i:Landroid/widget/TextView;

    const-string v10, "getTextDirectionHeuristic"

    sget-object v11, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 27
    invoke-static {v9, v10, v11}, Landroidx/appcompat/widget/l;->j(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/text/TextDirectionHeuristic;

    .line 28
    :goto_3
    invoke-virtual {v7, v9}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    const-string v9, "ACTVAutoSizeHelper"

    const-string v10, "Failed to obtain TextDirectionHeuristic, auto size may be incorrect"

    .line 29
    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :goto_4
    invoke-virtual {v7}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v7

    move v3, v15

    const/4 v4, -0x1

    goto :goto_5

    .line 31
    :cond_4
    iget-object v7, v0, Landroidx/appcompat/widget/l;->i:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v7

    .line 32
    iget-object v9, v0, Landroidx/appcompat/widget/l;->i:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v16

    .line 33
    iget-object v9, v0, Landroidx/appcompat/widget/l;->i:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v17

    .line 34
    new-instance v9, Landroid/text/StaticLayout;

    iget-object v11, v0, Landroidx/appcompat/widget/l;->h:Landroid/text/TextPaint;

    move-object v10, v9

    move-object/from16 v18, v11

    move-object v11, v8

    const/4 v4, -0x1

    move-object/from16 v12, v18

    move v3, v15

    move v15, v7

    invoke-direct/range {v10 .. v17}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object v7, v9

    :goto_5
    if-eq v3, v4, :cond_6

    .line 35
    invoke-virtual {v7}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    if-gt v4, v3, :cond_5

    .line 36
    invoke-virtual {v7}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v7, v3}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v3

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-eq v3, v8, :cond_7

    goto :goto_6

    :cond_5
    const/4 v4, 0x1

    goto :goto_6

    :cond_6
    const/4 v4, 0x1

    .line 37
    :cond_7
    invoke-virtual {v7}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_8

    :goto_6
    const/4 v3, 0x0

    goto :goto_7

    :cond_8
    const/4 v3, 0x1

    :goto_7
    if-eqz v3, :cond_9

    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    move/from16 v19, v6

    move v6, v5

    move/from16 v5, v19

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v6, v6, -0x1

    move v2, v6

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 38
    :cond_a
    iget-object v1, v0, Landroidx/appcompat/widget/l;->f:[I

    aget v1, v1, v6

    return v1

    .line 39
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No available text sizes to choose from."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw v1

    :goto_9
    goto :goto_8
.end method

.method private static i(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Landroidx/appcompat/widget/l;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 4
    sget-object v1, Landroidx/appcompat/widget/l;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to retrieve TextView#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "() method"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ACTVAutoSizeHelper"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static j(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Landroidx/appcompat/widget/l;->i(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string v0, "ACTVAutoSizeHelper"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to invoke TextView#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "() method"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-object p2

    .line 4
    :goto_1
    throw p0
.end method

.method private q()Z
    .locals 7

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/l;->s()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Landroidx/appcompat/widget/l;->a:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 2
    iget-boolean v0, p0, Landroidx/appcompat/widget/l;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/l;->f:[I

    array-length v0, v0

    if-nez v0, :cond_2

    .line 3
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/l;->e:F

    iget v3, p0, Landroidx/appcompat/widget/l;->d:F

    sub-float/2addr v0, v3

    iget v3, p0, Landroidx/appcompat/widget/l;->c:F

    div-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v0, v3

    add-int/2addr v0, v2

    .line 4
    new-array v3, v0, [I

    :goto_0
    if-ge v1, v0, :cond_1

    .line 5
    iget v4, p0, Landroidx/appcompat/widget/l;->d:F

    int-to-float v5, v1

    iget v6, p0, Landroidx/appcompat/widget/l;->c:F

    mul-float v5, v5, v6

    add-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0, v3}, Landroidx/appcompat/widget/l;->b([I)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/l;->f:[I

    .line 7
    :cond_2
    iput-boolean v2, p0, Landroidx/appcompat/widget/l;->b:Z

    goto :goto_1

    .line 8
    :cond_3
    iput-boolean v1, p0, Landroidx/appcompat/widget/l;->b:Z

    .line 9
    :goto_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/l;->b:Z

    return v0
.end method

.method private r()Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/l;->f:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 2
    :goto_0
    iput-boolean v4, p0, Landroidx/appcompat/widget/l;->g:Z

    if-eqz v4, :cond_1

    .line 3
    iput v3, p0, Landroidx/appcompat/widget/l;->a:I

    .line 4
    aget v2, v0, v2

    int-to-float v2, v2

    iput v2, p0, Landroidx/appcompat/widget/l;->d:F

    sub-int/2addr v1, v3

    .line 5
    aget v0, v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroidx/appcompat/widget/l;->e:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 6
    iput v0, p0, Landroidx/appcompat/widget/l;->c:F

    :cond_1
    return v4
.end method

.method private s()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/l;->i:Landroid/widget/TextView;

    instance-of v0, v0, Landroidx/appcompat/widget/AppCompatEditText;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private t(FFF)V
    .locals 3

    const-string v0, "px) is less or equal to (0px)"

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-lez v2, :cond_2

    cmpg-float v2, p2, p1

    if-lez v2, :cond_1

    cmpg-float v1, p3, v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Landroidx/appcompat/widget/l;->a:I

    .line 2
    iput p1, p0, Landroidx/appcompat/widget/l;->d:F

    .line 3
    iput p2, p0, Landroidx/appcompat/widget/l;->e:F

    .line 4
    iput p3, p0, Landroidx/appcompat/widget/l;->c:F

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroidx/appcompat/widget/l;->g:Z

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The auto-size step granularity ("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Maximum auto-size text size ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "px) is less or equal to minimum auto-size text size ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "px)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 8
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Minimum auto-size text size ("

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method a()V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/l;->s()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/appcompat/widget/l;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/l;->b:Z

    if-eqz v0, :cond_8

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/l;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Landroidx/appcompat/widget/l;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_2

    goto/16 :goto_3

    .line 4
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/l;->i:Landroid/widget/TextView;

    .line 5
    invoke-virtual {v0}, Landroid/widget/TextView;->isHorizontallyScrollable()Z

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroidx/appcompat/widget/l;->i:Landroid/widget/TextView;

    const-string v3, "getHorizontallyScrolling"

    .line 6
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v3, v4}, Landroidx/appcompat/widget/l;->j(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_4

    const/high16 v0, 0x100000

    goto :goto_2

    .line 7
    :cond_4
    iget-object v0, p0, Landroidx/appcompat/widget/l;->i:Landroid/widget/TextView;

    .line 8
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v3, p0, Landroidx/appcompat/widget/l;->i:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Landroidx/appcompat/widget/l;->i:Landroid/widget/TextView;

    .line 9
    invoke-virtual {v3}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    .line 10
    :goto_2
    iget-object v3, p0, Landroidx/appcompat/widget/l;->i:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroidx/appcompat/widget/l;->i:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroidx/appcompat/widget/l;->i:Landroid/widget/TextView;

    .line 11
    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    if-lez v0, :cond_7

    if-gtz v3, :cond_5

    goto :goto_3

    .line 12
    :cond_5
    sget-object v4, Landroidx/appcompat/widget/l;->k:Landroid/graphics/RectF;

    monitor-enter v4

    .line 13
    :try_start_0
    invoke-virtual {v4}, Landroid/graphics/RectF;->setEmpty()V

    int-to-float v0, v0

    .line 14
    iput v0, v4, Landroid/graphics/RectF;->right:F

    int-to-float v0, v3

    .line 15
    iput v0, v4, Landroid/graphics/RectF;->bottom:F

    .line 16
    invoke-direct {p0, v4}, Landroidx/appcompat/widget/l;->c(Landroid/graphics/RectF;)I

    move-result v0

    int-to-float v0, v0

    .line 17
    iget-object v3, p0, Landroidx/appcompat/widget/l;->i:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_6

    .line 18
    invoke-virtual {p0, v2, v0}, Landroidx/appcompat/widget/l;->p(IF)V

    .line 19
    :cond_6
    monitor-exit v4

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_7
    :goto_3
    return-void

    .line 20
    :cond_8
    :goto_4
    iput-boolean v1, p0, Landroidx/appcompat/widget/l;->b:Z

    return-void
.end method

.method d()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/l;->e:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method e()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/l;->d:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method f()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/l;->c:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method g()[I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/l;->f:[I

    return-object v0
.end method

.method h()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/l;->a:I

    return v0
.end method

.method k()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/l;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/appcompat/widget/l;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method l(Landroid/util/AttributeSet;I)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/l;->j:Landroid/content/Context;

    sget-object v1, Landroidx/appcompat/R$styleable;->j:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x5

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/l;->a:I

    :cond_0
    const/4 p2, 0x4

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    goto :goto_0

    :cond_1
    const/high16 p2, -0x40800000    # -1.0f

    :goto_0
    const/4 v0, 0x2

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    goto :goto_1

    :cond_2
    const/high16 v3, -0x40800000    # -1.0f

    :goto_1
    const/4 v4, 0x1

    .line 8
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 9
    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    goto :goto_2

    :cond_3
    const/high16 v5, -0x40800000    # -1.0f

    :goto_2
    const/4 v6, 0x3

    .line 10
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 11
    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    if-lez v6, :cond_6

    .line 12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 13
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 14
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->length()I

    move-result v7

    .line 15
    new-array v8, v7, [I

    if-lez v7, :cond_5

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v7, :cond_4

    const/4 v10, -0x1

    .line 16
    invoke-virtual {v6, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    aput v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 17
    :cond_4
    invoke-direct {p0, v8}, Landroidx/appcompat/widget/l;->b([I)[I

    move-result-object v7

    iput-object v7, p0, Landroidx/appcompat/widget/l;->f:[I

    .line 18
    invoke-direct {p0}, Landroidx/appcompat/widget/l;->r()Z

    .line 19
    :cond_5
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 20
    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    invoke-direct {p0}, Landroidx/appcompat/widget/l;->s()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 22
    iget p1, p0, Landroidx/appcompat/widget/l;->a:I

    if-ne p1, v4, :cond_c

    .line 23
    iget-boolean p1, p0, Landroidx/appcompat/widget/l;->g:Z

    if-nez p1, :cond_a

    .line 24
    iget-object p1, p0, Landroidx/appcompat/widget/l;->j:Landroid/content/Context;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    cmpl-float v2, v3, v1

    if-nez v2, :cond_7

    const/high16 v2, 0x41400000    # 12.0f

    .line 26
    invoke-static {v0, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    :cond_7
    cmpl-float v2, v5, v1

    if-nez v2, :cond_8

    const/high16 v2, 0x42e00000    # 112.0f

    .line 27
    invoke-static {v0, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    :cond_8
    cmpl-float p1, p2, v1

    if-nez p1, :cond_9

    const/high16 p2, 0x3f800000    # 1.0f

    .line 28
    :cond_9
    invoke-direct {p0, v3, v5, p2}, Landroidx/appcompat/widget/l;->t(FFF)V

    .line 29
    :cond_a
    invoke-direct {p0}, Landroidx/appcompat/widget/l;->q()Z

    goto :goto_4

    .line 30
    :cond_b
    iput v2, p0, Landroidx/appcompat/widget/l;->a:I

    :cond_c
    :goto_4
    return-void
.end method

.method m(IIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/l;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/l;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float p1, p1

    .line 3
    invoke-static {p4, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    int-to-float p2, p2

    .line 4
    invoke-static {p4, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    int-to-float p3, p3

    .line 5
    invoke-static {p4, p3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    .line 6
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/l;->t(FFF)V

    .line 7
    invoke-direct {p0}, Landroidx/appcompat/widget/l;->q()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/widget/l;->a()V

    :cond_0
    return-void
.end method

.method n([II)V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/l;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_3

    .line 3
    new-array v2, v0, [I

    if-nez p2, :cond_0

    .line 4
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    goto :goto_1

    .line 5
    :cond_0
    iget-object v3, p0, Landroidx/appcompat/widget/l;->j:Landroid/content/Context;

    .line 6
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    aget v4, p1, v1

    int-to-float v4, v4

    invoke-static {p2, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    :goto_1
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/l;->b([I)[I

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/l;->f:[I

    .line 9
    invoke-direct {p0}, Landroidx/appcompat/widget/l;->r()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "None of the preset sizes is valid: "

    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 12
    :cond_3
    iput-boolean v1, p0, Landroidx/appcompat/widget/l;->g:Z

    .line 13
    :goto_2
    invoke-direct {p0}, Landroidx/appcompat/widget/l;->q()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 14
    invoke-virtual {p0}, Landroidx/appcompat/widget/l;->a()V

    :cond_4
    return-void
.end method

.method o(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/l;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/l;->j:Landroid/content/Context;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v0, 0x41400000    # 12.0f

    const/4 v1, 0x2

    .line 4
    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v2, 0x42e00000    # 112.0f

    .line 5
    invoke-static {v1, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    invoke-direct {p0, v0, p1, v1}, Landroidx/appcompat/widget/l;->t(FFF)V

    .line 7
    invoke-direct {p0}, Landroidx/appcompat/widget/l;->q()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/widget/l;->a()V

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown auto-size text type: "

    invoke-static {v1, p1}, Lic;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 p1, 0x0

    .line 10
    iput p1, p0, Landroidx/appcompat/widget/l;->a:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 11
    iput v0, p0, Landroidx/appcompat/widget/l;->d:F

    .line 12
    iput v0, p0, Landroidx/appcompat/widget/l;->e:F

    .line 13
    iput v0, p0, Landroidx/appcompat/widget/l;->c:F

    new-array v0, p1, [I

    .line 14
    iput-object v0, p0, Landroidx/appcompat/widget/l;->f:[I

    .line 15
    iput-boolean p1, p0, Landroidx/appcompat/widget/l;->b:Z

    :cond_2
    :goto_0
    return-void
.end method

.method p(IF)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/l;->j:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    .line 5
    iget-object p2, p0, Landroidx/appcompat/widget/l;->i:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/text/TextPaint;->getTextSize()F

    move-result p2

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_3

    .line 6
    iget-object p2, p0, Landroidx/appcompat/widget/l;->i:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 7
    iget-object p1, p0, Landroidx/appcompat/widget/l;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isInLayout()Z

    move-result p1

    .line 8
    iget-object p2, p0, Landroidx/appcompat/widget/l;->i:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    .line 9
    iput-boolean p2, p0, Landroidx/appcompat/widget/l;->b:Z

    :try_start_0
    const-string v0, "nullLayouts"

    .line 10
    invoke-static {v0}, Landroidx/appcompat/widget/l;->i(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v1, p0, Landroidx/appcompat/widget/l;->i:Landroid/widget/TextView;

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    const-string v0, "ACTVAutoSizeHelper"

    const-string v1, "Failed to invoke TextView#nullLayouts() method"

    .line 12
    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    if-nez p1, :cond_2

    .line 13
    iget-object p1, p0, Landroidx/appcompat/widget/l;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_2

    .line 14
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/widget/l;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->forceLayout()V

    .line 15
    :goto_2
    iget-object p1, p0, Landroidx/appcompat/widget/l;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    :cond_3
    return-void
.end method
