.class Landroidx/appcompat/widget/p;
.super Landroid/widget/ListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/p$b;,
        Landroidx/appcompat/widget/p$a;
    }
.end annotation


# instance fields
.field private final b:Landroid/graphics/Rect;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/lang/reflect/Field;

.field private i:Landroidx/appcompat/widget/p$a;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Landroidx/core/widget/d;

.field n:Landroidx/appcompat/widget/p$b;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f030125

    .line 1
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/p;->b:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Landroidx/appcompat/widget/p;->c:I

    .line 4
    iput p1, p0, Landroidx/appcompat/widget/p;->d:I

    .line 5
    iput p1, p0, Landroidx/appcompat/widget/p;->e:I

    .line 6
    iput p1, p0, Landroidx/appcompat/widget/p;->f:I

    .line 7
    iput-boolean p2, p0, Landroidx/appcompat/widget/p;->k:Z

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 9
    :try_start_0
    const-class p1, Landroid/widget/AbsListView;

    const-string p2, "mIsChildViewEnabled"

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/p;->h:Ljava/lang/reflect/Field;

    const/4 p2, 0x1

    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v1, p0, Landroidx/appcompat/widget/p;->l:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/ListView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/ListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(IIIII)I
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result p2

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result p3

    .line 3
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingLeft()I

    .line 4
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingRight()I

    .line 5
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v0

    .line 6
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 7
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-nez v2, :cond_0

    add-int/2addr p2, p3

    return p2

    :cond_0
    add-int/2addr p2, p3

    const/4 p3, 0x0

    if-lez v0, :cond_1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    const/4 v3, 0x0

    move-object v6, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v4, v1, :cond_9

    .line 9
    invoke-interface {v2, v4}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v5, :cond_2

    move-object v6, v3

    move v5, v8

    .line 10
    :cond_2
    invoke-interface {v2, v4, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 11
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_3

    .line 12
    invoke-virtual {p0}, Landroid/widget/ListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 13
    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    :cond_3
    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v8, :cond_4

    const/high16 v9, 0x40000000    # 2.0f

    .line 15
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_2

    .line 16
    :cond_4
    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 17
    :goto_2
    invoke-virtual {v6, p1, v8}, Landroid/view/View;->measure(II)V

    .line 18
    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    if-lez v4, :cond_5

    add-int/2addr p2, v0

    .line 19
    :cond_5
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr p2, v8

    if-lt p2, p4, :cond_7

    if-ltz p5, :cond_6

    if-le v4, p5, :cond_6

    if-lez v7, :cond_6

    if-eq p2, p4, :cond_6

    move p4, v7

    :cond_6
    return p4

    :cond_7
    if-ltz p5, :cond_8

    if-lt v4, p5, :cond_8

    move v7, p2

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_9
    return p2
.end method

.method public b(Landroid/view/MotionEvent;I)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_3

    const/4 v0, 0x2

    if-eq v3, v0, :cond_2

    const/4 v0, 0x3

    if-eq v3, v0, :cond_1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v4, 0x0

    goto/16 :goto_8

    :cond_1
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 2
    :goto_3
    invoke-virtual/range {p1 .. p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    if-gez v6, :cond_4

    goto :goto_2

    .line 3
    :cond_4
    invoke-virtual {v2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v7, v7

    .line 4
    invoke-virtual {v2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    .line 5
    invoke-virtual {v1, v7, v6}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_5

    goto/16 :goto_8

    .line 6
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, v8, v0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    int-to-float v7, v7

    int-to-float v6, v6

    .line 7
    iput-boolean v4, v1, Landroidx/appcompat/widget/p;->l:Z

    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-lt v0, v11, :cond_6

    .line 9
    invoke-virtual {v1, v7, v6}, Landroid/widget/ListView;->drawableHotspotChanged(FF)V

    .line 10
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isPressed()Z

    move-result v12

    if-nez v12, :cond_7

    .line 11
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setPressed(Z)V

    .line 12
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 13
    iget v12, v1, Landroidx/appcompat/widget/p;->g:I

    if-eq v12, v9, :cond_8

    .line 14
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v1, v12}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_8

    if-eq v12, v10, :cond_8

    .line 15
    invoke-virtual {v12}, Landroid/view/View;->isPressed()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 16
    invoke-virtual {v12, v5}, Landroid/view/View;->setPressed(Z)V

    .line 17
    :cond_8
    iput v8, v1, Landroidx/appcompat/widget/p;->g:I

    .line 18
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v12

    int-to-float v12, v12

    sub-float v12, v7, v12

    .line 19
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    int-to-float v13, v13

    sub-float v13, v6, v13

    if-lt v0, v11, :cond_9

    .line 20
    invoke-virtual {v10, v12, v13}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 21
    :cond_9
    invoke-virtual {v10}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-nez v0, :cond_a

    .line 22
    invoke-virtual {v10, v4}, Landroid/view/View;->setPressed(Z)V

    .line 23
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_b

    if-eq v8, v9, :cond_b

    const/4 v12, 0x1

    goto :goto_4

    :cond_b
    const/4 v12, 0x0

    :goto_4
    if-eqz v12, :cond_c

    .line 24
    invoke-virtual {v11, v5, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 25
    :cond_c
    iget-object v0, v1, Landroidx/appcompat/widget/p;->b:Landroid/graphics/Rect;

    .line 26
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v15

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v13, v14, v15, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 27
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v13, v1, Landroidx/appcompat/widget/p;->c:I

    sub-int/2addr v4, v13

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 28
    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v13, v1, Landroidx/appcompat/widget/p;->d:I

    sub-int/2addr v4, v13

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 29
    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v13, v1, Landroidx/appcompat/widget/p;->e:I

    add-int/2addr v4, v13

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 30
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v13, v1, Landroidx/appcompat/widget/p;->f:I

    add-int/2addr v4, v13

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 31
    :try_start_0
    iget-object v0, v1, Landroidx/appcompat/widget/p;->h:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 32
    invoke-virtual {v10}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eq v4, v0, :cond_e

    .line 33
    iget-object v4, v1, Landroidx/appcompat/widget/p;->h:Ljava/lang/reflect/Field;

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_5

    :cond_d
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eq v8, v9, :cond_e

    .line 34
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->refreshDrawableState()V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_e
    :goto_6
    if-eqz v12, :cond_10

    .line 36
    iget-object v0, v1, Landroidx/appcompat/widget/p;->b:Landroid/graphics/Rect;

    .line 37
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    .line 38
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    .line 39
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getVisibility()I

    move-result v12

    if-nez v12, :cond_f

    const/4 v12, 0x1

    goto :goto_7

    :cond_f
    const/4 v12, 0x0

    :goto_7
    invoke-virtual {v11, v12, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 40
    invoke-static {v11, v4, v0}, Landroidx/core/graphics/drawable/a;->c(Landroid/graphics/drawable/Drawable;FF)V

    .line 41
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_11

    if-eq v8, v9, :cond_11

    .line 42
    invoke-static {v0, v7, v6}, Landroidx/core/graphics/drawable/a;->c(Landroid/graphics/drawable/Drawable;FF)V

    .line 43
    :cond_11
    iget-object v0, v1, Landroidx/appcompat/widget/p;->i:Landroidx/appcompat/widget/p$a;

    if-eqz v0, :cond_12

    .line 44
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/p$a;->b(Z)V

    .line 45
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->refreshDrawableState()V

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 46
    invoke-virtual {v1, v8}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v3

    .line 47
    invoke-virtual {v1, v10, v8, v3, v4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    goto/16 :goto_0

    :goto_8
    if-eqz v0, :cond_13

    if-eqz v4, :cond_14

    .line 48
    :cond_13
    iput-boolean v5, v1, Landroidx/appcompat/widget/p;->l:Z

    .line 49
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setPressed(Z)V

    .line 50
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/p;->drawableStateChanged()V

    .line 51
    iget v3, v1, Landroidx/appcompat/widget/p;->g:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 52
    invoke-virtual {v3, v5}, Landroid/view/View;->setPressed(Z)V

    :cond_14
    if-eqz v0, :cond_16

    .line 53
    iget-object v3, v1, Landroidx/appcompat/widget/p;->m:Landroidx/core/widget/d;

    if-nez v3, :cond_15

    .line 54
    new-instance v3, Landroidx/core/widget/d;

    invoke-direct {v3, v1}, Landroidx/core/widget/d;-><init>(Landroid/widget/ListView;)V

    iput-object v3, v1, Landroidx/appcompat/widget/p;->m:Landroidx/core/widget/d;

    .line 55
    :cond_15
    iget-object v3, v1, Landroidx/appcompat/widget/p;->m:Landroidx/core/widget/d;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/core/widget/a;->f(Z)Landroidx/core/widget/a;

    .line 56
    iget-object v3, v1, Landroidx/appcompat/widget/p;->m:Landroidx/core/widget/d;

    invoke-virtual {v3, v1, v2}, Landroidx/core/widget/a;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_9

    .line 57
    :cond_16
    iget-object v2, v1, Landroidx/appcompat/widget/p;->m:Landroidx/core/widget/d;

    if-eqz v2, :cond_17

    .line 58
    invoke-virtual {v2, v5}, Landroidx/core/widget/a;->f(Z)Landroidx/core/widget/a;

    :cond_17
    :goto_9
    return v0
.end method

.method c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/p;->j:Z

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/p;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/p;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/p;->n:Landroidx/appcompat/widget/p$b;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    const/4 v0, 0x1

    .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/p;->i:Landroidx/appcompat/widget/p$a;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/p$a;->b(Z)V

    .line 5
    :cond_1
    invoke-direct {p0}, Landroidx/appcompat/widget/p;->d()V

    return-void
.end method

.method public hasFocus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/p;->k:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/p;->k:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isFocused()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/p;->k:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isInTouchMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/p;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/widget/p;->j:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroidx/appcompat/widget/p;->n:Landroidx/appcompat/widget/p$b;

    .line 2
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/p;->n:Landroidx/appcompat/widget/p$b;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Landroidx/appcompat/widget/p$b;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/p$b;-><init>(Landroidx/appcompat/widget/p;)V

    iput-object v1, p0, Landroidx/appcompat/widget/p;->n:Landroidx/appcompat/widget/p$b;

    .line 6
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 7
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    const/16 v2, 0x9

    const/4 v3, -0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1

    .line 9
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result p1

    if-eq p1, v3, :cond_5

    .line 10
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_5

    .line 11
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 14
    :cond_4
    invoke-direct {p0}, Landroidx/appcompat/widget/p;->d()V

    :cond_5
    :goto_1
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/p;->g:I

    .line 3
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/p;->n:Landroidx/appcompat/widget/p$b;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, v0, Landroidx/appcompat/widget/p$b;->b:Landroidx/appcompat/widget/p;

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/appcompat/widget/p;->n:Landroidx/appcompat/widget/p$b;

    .line 5
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Landroidx/appcompat/widget/p$a;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/p$a;-><init>(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/appcompat/widget/p;->i:Landroidx/appcompat/widget/p$a;

    .line 2
    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 5
    :cond_1
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iput p1, p0, Landroidx/appcompat/widget/p;->c:I

    .line 6
    iget p1, v0, Landroid/graphics/Rect;->top:I

    iput p1, p0, Landroidx/appcompat/widget/p;->d:I

    .line 7
    iget p1, v0, Landroid/graphics/Rect;->right:I

    iput p1, p0, Landroidx/appcompat/widget/p;->e:I

    .line 8
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Landroidx/appcompat/widget/p;->f:I

    return-void
.end method
