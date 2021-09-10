.class Ldev/in/common/core/activity/PolicyActivity$b;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/in/common/core/activity/PolicyActivity;->initView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldev/in/common/core/activity/PolicyActivity;


# direct methods
.method constructor <init>(Ldev/in/common/core/activity/PolicyActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/in/common/core/activity/PolicyActivity$b;->a:Ldev/in/common/core/activity/PolicyActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    const/16 p1, 0x64

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Ldev/in/common/core/activity/PolicyActivity$b;->a:Ldev/in/common/core/activity/PolicyActivity;

    invoke-static {p1}, Ldev/in/common/core/activity/PolicyActivity;->access$000(Ldev/in/common/core/activity/PolicyActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Ldev/in/common/core/activity/PolicyActivity$b;->a:Ldev/in/common/core/activity/PolicyActivity;

    invoke-static {p1}, Ldev/in/common/core/activity/PolicyActivity;->access$100(Ldev/in/common/core/activity/PolicyActivity;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Ldev/in/common/core/activity/PolicyActivity$b;->a:Ldev/in/common/core/activity/PolicyActivity;

    invoke-static {p1}, Ldev/in/common/core/activity/PolicyActivity;->access$000(Ldev/in/common/core/activity/PolicyActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Ldev/in/common/core/activity/PolicyActivity$b;->a:Ldev/in/common/core/activity/PolicyActivity;

    invoke-static {p1}, Ldev/in/common/core/activity/PolicyActivity;->access$000(Ldev/in/common/core/activity/PolicyActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_0
    return-void
.end method
