.class public Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field private b:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:I

.field final synthetic f:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;


# direct methods
.method public constructor <init>(Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;Landroid/content/Context;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->f:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;

    .line 2
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->e:I

    .line 4
    iget v0, p1, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->m:I

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p2, v0}, Ld;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 6
    sget v0, Lc3;->g:I

    .line 7
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8
    :cond_0
    iget p2, p1, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->e:I

    iget v0, p1, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->f:I

    iget v1, p1, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->g:I

    iget p1, p1, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->h:I

    .line 9
    sget v2, Lc3;->g:I

    .line 10
    invoke-virtual {p0, p2, v0, v1, p1}, Landroid/view/View;->setPaddingRelative(IIII)V

    const/16 p1, 0x11

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x3ea

    invoke-static {p1, p2}, La3;->b(Landroid/content/Context;I)La3;

    move-result-object p1

    .line 15
    invoke-static {p0, p1}, Lc3;->y(Landroid/view/View;La3;)V

    return-void
.end method

.method private d(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->b:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->b:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;->b()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->b:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;

    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/16 v2, 0x8

    if-eqz p2, :cond_3

    .line 4
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 7
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_5

    if-eqz v3, :cond_4

    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 11
    :cond_4
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    if-eqz p2, :cond_7

    .line 14
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_6

    .line 15
    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 16
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->f:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;

    invoke-virtual {v0, v2}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->d(I)I

    move-result v0

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    .line 17
    :goto_2
    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v0, v2, :cond_7

    .line 18
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 19
    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    :cond_7
    if-nez v3, :cond_8

    .line 20
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 21
    invoke-virtual {p0, p0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_3

    .line 22
    :cond_8
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 23
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setLongClickable(Z)V

    :goto_3
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->b:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->b:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;

    .line 3
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->c()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->setSelected(Z)V

    return-void
.end method

.method b(Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->b:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;

    if-eq p1, v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->b:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;

    .line 3
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->c()V

    :cond_0
    return-void
.end method

.method final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->b:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;

    const/4 v1, 0x0

    .line 2
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->d:Landroid/widget/ImageView;

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b0038

    .line 4
    invoke-virtual {v2, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 5
    invoke-virtual {p0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 6
    iput-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->d:Landroid/widget/ImageView;

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->c:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b0039

    .line 9
    invoke-virtual {v2, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 10
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 11
    iput-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->c:Landroid/widget/TextView;

    .line 12
    invoke-virtual {v2}, Landroid/widget/TextView;->getMaxLines()I

    move-result v2

    .line 13
    iput v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->e:I

    .line 14
    :cond_1
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->f:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;

    iget v3, v3, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->i:I

    invoke-static {v2, v3}, Landroidx/core/widget/c;->h(Landroid/widget/TextView;I)V

    .line 15
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->f:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;

    iget-object v2, v2, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->j:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    .line 16
    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 17
    :cond_2
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->d:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v3}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->d(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    if-eqz v0, :cond_3

    .line 18
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-virtual {p0, v1}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->setSelected(Z)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class v0, Landroidx/appcompat/app/ActionBar$b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    const-class v0, Landroidx/appcompat/app/ActionBar$b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 10

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    .line 3
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    .line 7
    aget v7, v1, v6

    div-int/lit8 v8, v5, 0x2

    add-int/2addr v8, v7

    const/4 v7, 0x0

    .line 8
    aget v9, v1, v7

    div-int/2addr v4, v0

    add-int/2addr v4, v9

    .line 9
    sget v0, Lc3;->g:I

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    if-nez p1, :cond_0

    .line 11
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v4, p1, v4

    .line 12
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->b:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-static {v3, p1, v7}, Lcom/camerasideas/collagemaker/activity/widget/m;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 13
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ge v8, v0, :cond_1

    const v0, 0x800035

    .line 14
    aget v1, v1, v6

    add-int/2addr v1, v5

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x51

    .line 15
    invoke-virtual {p1, v0, v7, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 16
    :goto_0
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v6
.end method

.method public onMeasure(II)V
    .locals 7

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->f:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;

    .line 4
    iget v2, v2, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->n:I

    if-lez v2, :cond_1

    if-eqz v1, :cond_0

    if-le v0, v2, :cond_1

    :cond_0
    const/high16 p1, -0x80000000

    .line 5
    invoke-static {v2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 6
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 7
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 9
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->f:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;

    iget v0, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->k:F

    .line 10
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->e:I

    .line 11
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->d:Landroid/widget/ImageView;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 12
    :cond_2
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->c:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    if-le v2, v3, :cond_3

    .line 13
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->f:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;

    iget v0, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->l:F

    .line 14
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    .line 15
    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    .line 16
    iget-object v5, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->c:Landroid/widget/TextView;

    .line 17
    invoke-virtual {v5}, Landroid/widget/TextView;->getMaxLines()I

    move-result v5

    cmpl-float v6, v0, v2

    if-nez v6, :cond_4

    if-ltz v5, :cond_7

    if-eq v1, v5, :cond_7

    .line 18
    :cond_4
    iget-object v5, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->f:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;

    iget v5, v5, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->t:I

    const/4 v6, 0x0

    if-ne v5, v3, :cond_6

    cmpl-float v2, v0, v2

    if-lez v2, :cond_6

    if-ne v4, v3, :cond_6

    .line 19
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 20
    invoke-virtual {v2, v6}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    invoke-virtual {v2}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    move-result v2

    div-float v2, v0, v2

    mul-float v2, v2, v4

    .line 21
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_6

    :cond_5
    const/4 v3, 0x0

    :cond_6
    if-eqz v3, :cond_7

    .line 22
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 23
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 24
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_7
    return-void
.end method

.method public performClick()Z
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->b:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->playSoundEffect(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->b:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;

    .line 5
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;->c:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v1, v0, v2}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->i(Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;Z)V

    return v2

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return v0
.end method

.method public setSelected(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isSelected()Z

    move-result v0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_1
    return-void
.end method
