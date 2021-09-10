.class Lcom/facebook/rebound/ui/SpringConfiguratorView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rebound/ui/SpringConfiguratorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Lcom/facebook/rebound/ui/SpringConfiguratorView;


# direct methods
.method constructor <init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;Lcom/facebook/rebound/ui/SpringConfiguratorView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$b;->b:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$b;->b:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    invoke-static {p1}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->c(Lcom/facebook/rebound/ui/SpringConfiguratorView;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
