.class Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->loadMraid(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

.field final synthetic val$indexHtml:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$3;->this$0:Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    iput-object p2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$3;->val$indexHtml:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public status(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$3;->this$0:Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    const/16 v0, 0x1b

    invoke-static {p1, v0}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->access$000(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;I)V

    .line 2
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$3;->this$0:Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->access$000(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;I)V

    .line 3
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$3;->this$0:Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    invoke-static {p1}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->access$300(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;)Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    move-result-object p1

    invoke-interface {p1}, Lcom/vungle/warren/ui/contract/AdContract$AdView;->close()V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$3;->this$0:Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    invoke-static {p1}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->access$300(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;)Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    move-result-object p1

    const-string v0, "file://"

    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$3;->val$indexHtml:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/vungle/warren/ui/contract/AdContract$AdView;->showWebsite(Ljava/lang/String;)V

    return-void
.end method
