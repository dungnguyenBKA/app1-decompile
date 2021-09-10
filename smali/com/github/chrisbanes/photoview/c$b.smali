.class Lcom/github/chrisbanes/photoview/c$b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/chrisbanes/photoview/c;-><init>(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/chrisbanes/photoview/c;


# direct methods
.method constructor <init>(Lcom/github/chrisbanes/photoview/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/chrisbanes/photoview/c$b;->a:Lcom/github/chrisbanes/photoview/c;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/c$b;->a:Lcom/github/chrisbanes/photoview/c;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/c$b;->a:Lcom/github/chrisbanes/photoview/c;

    invoke-static {p1}, Lcom/github/chrisbanes/photoview/c;->e(Lcom/github/chrisbanes/photoview/c;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/c$b;->a:Lcom/github/chrisbanes/photoview/c;

    invoke-static {p1}, Lcom/github/chrisbanes/photoview/c;->e(Lcom/github/chrisbanes/photoview/c;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/github/chrisbanes/photoview/c$b;->a:Lcom/github/chrisbanes/photoview/c;

    invoke-static {v0}, Lcom/github/chrisbanes/photoview/c;->l(Lcom/github/chrisbanes/photoview/c;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_0
    return-void
.end method
