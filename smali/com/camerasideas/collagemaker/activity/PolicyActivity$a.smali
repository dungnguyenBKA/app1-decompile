.class Lcom/camerasideas/collagemaker/activity/PolicyActivity$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/camerasideas/collagemaker/activity/PolicyActivity;->initView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/camerasideas/collagemaker/activity/PolicyActivity;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/PolicyActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/PolicyActivity$a;->a:Lcom/camerasideas/collagemaker/activity/PolicyActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/PolicyActivity$a;->a:Lcom/camerasideas/collagemaker/activity/PolicyActivity;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/activity/PolicyActivity;->access$000(Lcom/camerasideas/collagemaker/activity/PolicyActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/PolicyActivity$a;->a:Lcom/camerasideas/collagemaker/activity/PolicyActivity;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/PolicyActivity;->access$100(Lcom/camerasideas/collagemaker/activity/PolicyActivity;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/PolicyActivity$a;->a:Lcom/camerasideas/collagemaker/activity/PolicyActivity;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/activity/PolicyActivity;->access$000(Lcom/camerasideas/collagemaker/activity/PolicyActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
