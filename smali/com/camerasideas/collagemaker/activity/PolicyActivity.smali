.class public Lcom/camerasideas/collagemaker/activity/PolicyActivity;
.super Lcom/camerasideas/collagemaker/activity/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/camerasideas/collagemaker/activity/PolicyActivity$c;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PolicyActivity"


# instance fields
.field private progressBar:Landroid/widget/ProgressBar;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/camerasideas/collagemaker/activity/PolicyActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/PolicyActivity;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/camerasideas/collagemaker/activity/PolicyActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/PolicyActivity;->updateStatus()V

    return-void
.end method

.method private initView(Ljava/lang/String;)V
    .locals 3

    const v0, 0x7f080201

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/PolicyActivity;->progressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f08004f

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/PolicyActivity;->webView:Landroid/webkit/WebView;

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 5
    new-instance v0, Lcom/camerasideas/collagemaker/activity/PolicyActivity$c;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/PolicyActivity$c;-><init>(Lcom/camerasideas/collagemaker/activity/PolicyActivity;)V

    .line 6
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/PolicyActivity;->webView:Landroid/webkit/WebView;

    const-string v2, "getPrivacyPolicy"

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/PolicyActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/camerasideas/collagemaker/activity/PolicyActivity$a;

    invoke-direct {v1, p0}, Lcom/camerasideas/collagemaker/activity/PolicyActivity$a;-><init>(Lcom/camerasideas/collagemaker/activity/PolicyActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 8
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/PolicyActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/camerasideas/collagemaker/activity/PolicyActivity$b;

    invoke-direct {v1, p0}, Lcom/camerasideas/collagemaker/activity/PolicyActivity$b;-><init>(Lcom/camerasideas/collagemaker/activity/PolicyActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 9
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/PolicyActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic o(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private updateStatus()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/PolicyActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "email"

    const-string v2, "collageteam.feedback@gmail.com"

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    invoke-static {p0}, Lcc0;->l(Landroid/content/Context;)Lcom/google/ads/consent/ConsentStatus;

    move-result-object v1

    sget-object v2, Lcom/google/ads/consent/ConsentStatus;->NON_PERSONALIZED:Lcom/google/ads/consent/ConsentStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "status"

    if-ne v1, v2, :cond_0

    :try_start_1
    const-string v1, "disagree"

    .line 5
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string v1, "agree"

    .line 6
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/PolicyActivity;->webView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:setStyle("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lxq;->e(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/camerasideas/collagemaker/activity/BaseActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected getTAG()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/camerasideas/collagemaker/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001c

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-le p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x1000000

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?pkg="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f080151

    .line 7
    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/camerasideas/collagemaker/activity/k0;

    invoke-direct {v1, p0}, Lcom/camerasideas/collagemaker/activity/k0;-><init>(Lcom/camerasideas/collagemaker/activity/PolicyActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801fc

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e0134

    .line 10
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Luq;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    :goto_0
    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/PolicyActivity;->initView(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/PolicyActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/PolicyActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setTag(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/PolicyActivity;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 5
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/PolicyActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 6
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/PolicyActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 7
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/PolicyActivity;->webView:Landroid/webkit/WebView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/camerasideas/collagemaker/activity/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/camerasideas/collagemaker/activity/BaseActivity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/PolicyActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/camerasideas/collagemaker/activity/BaseActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/PolicyActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/camerasideas/collagemaker/activity/BaseActivity;->onStart()V

    return-void
.end method
