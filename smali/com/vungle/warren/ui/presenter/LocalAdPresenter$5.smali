.class Lcom/vungle/warren/ui/presenter/LocalAdPresenter$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$5;->this$0:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$5;->this$0:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->access$802(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;Z)Z

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$5;->this$0:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-static {v0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->access$500(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$5;->this$0:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-static {v0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->access$200(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/AdContract$AdView;->showCloseButton()V

    :cond_0
    return-void
.end method
