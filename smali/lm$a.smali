.class Llm$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llm;->b(Landroid/app/Activity;Llm$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private b:I

.field private c:Z

.field private d:Z

.field final synthetic e:Landroid/view/View;

.field final synthetic f:I

.field final synthetic g:Llm$b;

.field final synthetic h:Llm;


# direct methods
.method constructor <init>(Llm;Landroid/view/View;ILlm$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llm$a;->h:Llm;

    iput-object p2, p0, Llm$a;->e:Landroid/view/View;

    iput p3, p0, Llm$a;->f:I

    iput-object p4, p0, Llm$a;->g:Llm$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    .line 1
    iget-object v0, p0, Llm$a;->h:Llm;

    invoke-static {v0, p0}, Llm;->a(Llm;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3
    iget-object v1, p0, Llm$a;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 4
    iget-object v1, p0, Llm$a;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 5
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v1, v2

    div-int/lit8 v4, v1, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ge v3, v4, :cond_0

    .line 6
    iput-boolean v5, p0, Llm$a;->d:Z

    .line 7
    iget-object v3, p0, Llm$a;->h:Llm;

    sub-int v7, v1, v2

    iput v7, v3, Llm;->b:I

    goto :goto_0

    :cond_0
    sub-int v3, v1, v2

    if-nez v3, :cond_1

    .line 8
    iget-object v3, p0, Llm$a;->h:Llm;

    iput v6, v3, Llm;->b:I

    .line 9
    iput-boolean v6, p0, Llm$a;->d:Z

    .line 10
    :cond_1
    :goto_0
    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    sub-int/2addr v1, v2

    .line 11
    iget v0, p0, Llm$a;->b:I

    if-nez v0, :cond_3

    if-le v1, v4, :cond_3

    .line 12
    iget-boolean v0, p0, Llm$a;->d:Z

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Llm$a;->h:Llm;

    iget v0, v0, Llm;->b:I

    sub-int v0, v1, v0

    iput v0, p0, Llm$a;->b:I

    goto :goto_1

    .line 14
    :cond_2
    iput v1, p0, Llm$a;->b:I

    .line 15
    :cond_3
    :goto_1
    iget-boolean v0, p0, Llm$a;->d:Z

    if-eqz v0, :cond_5

    .line 16
    iget-boolean v0, p0, Llm$a;->c:Z

    if-eqz v0, :cond_4

    .line 17
    iget v0, p0, Llm$a;->f:I

    iget-object v2, p0, Llm$a;->h:Llm;

    iget v2, v2, Llm;->b:I

    add-int/2addr v0, v2

    if-gt v1, v0, :cond_7

    .line 18
    iput-boolean v6, p0, Llm$a;->c:Z

    .line 19
    iget-object v0, p0, Llm$a;->g:Llm$b;

    iget v1, p0, Llm$a;->b:I

    check-cast v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;

    invoke-virtual {v0, v1, v6}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->D1(IZ)V

    goto :goto_2

    .line 20
    :cond_4
    iget v0, p0, Llm$a;->f:I

    if-le v1, v0, :cond_7

    if-le v1, v4, :cond_7

    .line 21
    iput-boolean v5, p0, Llm$a;->c:Z

    .line 22
    iget-object v0, p0, Llm$a;->g:Llm$b;

    iget v1, p0, Llm$a;->b:I

    check-cast v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;

    invoke-virtual {v0, v1, v5}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->D1(IZ)V

    goto :goto_2

    .line 23
    :cond_5
    iget-boolean v0, p0, Llm$a;->c:Z

    if-eqz v0, :cond_6

    .line 24
    iget v0, p0, Llm$a;->f:I

    if-gt v1, v0, :cond_7

    .line 25
    iput-boolean v6, p0, Llm$a;->c:Z

    .line 26
    iget-object v0, p0, Llm$a;->g:Llm$b;

    iget v1, p0, Llm$a;->b:I

    check-cast v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;

    invoke-virtual {v0, v1, v6}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->D1(IZ)V

    goto :goto_2

    .line 27
    :cond_6
    iget v0, p0, Llm$a;->f:I

    if-le v1, v0, :cond_7

    .line 28
    iput-boolean v5, p0, Llm$a;->c:Z

    .line 29
    iget-object v0, p0, Llm$a;->g:Llm$b;

    iget v1, p0, Llm$a;->b:I

    check-cast v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;

    invoke-virtual {v0, v1, v5}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->D1(IZ)V

    :cond_7
    :goto_2
    return-void
.end method
