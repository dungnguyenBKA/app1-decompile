.class Lcom/vungle/warren/ui/view/LocalAdView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ui/view/LocalAdView;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/ui/view/LocalAdView;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/view/LocalAdView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView$3;->this$0:Lcom/vungle/warren/ui/view/LocalAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/LocalAdView$3;->this$0:Lcom/vungle/warren/ui/view/LocalAdView;

    iget-object v1, v0, Lcom/vungle/warren/ui/view/BaseAdView;->TAG:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/vungle/warren/ui/view/LocalAdView;->access$600(Lcom/vungle/warren/ui/view/LocalAdView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/ui/view/LocalAdView$3;->this$0:Lcom/vungle/warren/ui/view/LocalAdView;

    invoke-static {v0}, Lcom/vungle/warren/ui/view/LocalAdView;->access$500(Lcom/vungle/warren/ui/view/LocalAdView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/ui/view/LocalAdView$3;->this$0:Lcom/vungle/warren/ui/view/LocalAdView;

    invoke-static {v1}, Lcom/vungle/warren/ui/view/LocalAdView;->access$600(Lcom/vungle/warren/ui/view/LocalAdView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/ui/view/LocalAdView$3;->this$0:Lcom/vungle/warren/ui/view/LocalAdView;

    invoke-static {v0}, Lcom/vungle/warren/ui/view/LocalAdView;->access$000(Lcom/vungle/warren/ui/view/LocalAdView;)Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    int-to-float p1, p1

    invoke-interface {v0, v1, p1}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;->onProgressUpdate(IF)V

    return-void
.end method
