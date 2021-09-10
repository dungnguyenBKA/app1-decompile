.class public Lcom/google/ads/consent/ConsentForm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/consent/ConsentForm$Builder;,
        Lcom/google/ads/consent/ConsentForm$LoadState;
    }
.end annotation


# instance fields
.field private final adFreeOption:Z

.field private final appPrivacyPolicyURL:Ljava/net/URL;

.field private final context:Landroid/content/Context;

.field private final dialog:Landroid/app/Dialog;

.field private final listener:Lcom/google/ads/consent/ConsentFormListener;

.field private loadState:Lcom/google/ads/consent/ConsentForm$LoadState;

.field private final nonPersonalizedAdsOption:Z

.field private final personalizedAdsOption:Z

.field private final webView:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Lcom/google/ads/consent/ConsentForm$Builder;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/ads/consent/ConsentForm$Builder;->access$000(Lcom/google/ads/consent/ConsentForm$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/consent/ConsentForm;->context:Landroid/content/Context;

    .line 4
    invoke-static {p1}, Lcom/google/ads/consent/ConsentForm$Builder;->access$100(Lcom/google/ads/consent/ConsentForm$Builder;)Lcom/google/ads/consent/ConsentFormListener;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/google/ads/consent/ConsentForm$1;

    invoke-direct {v1, p0}, Lcom/google/ads/consent/ConsentForm$1;-><init>(Lcom/google/ads/consent/ConsentForm;)V

    iput-object v1, p0, Lcom/google/ads/consent/ConsentForm;->listener:Lcom/google/ads/consent/ConsentFormListener;

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/google/ads/consent/ConsentForm$Builder;->access$100(Lcom/google/ads/consent/ConsentForm$Builder;)Lcom/google/ads/consent/ConsentFormListener;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/consent/ConsentForm;->listener:Lcom/google/ads/consent/ConsentFormListener;

    .line 7
    :goto_0
    invoke-static {p1}, Lcom/google/ads/consent/ConsentForm$Builder;->access$200(Lcom/google/ads/consent/ConsentForm$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/ads/consent/ConsentForm;->personalizedAdsOption:Z

    .line 8
    invoke-static {p1}, Lcom/google/ads/consent/ConsentForm$Builder;->access$300(Lcom/google/ads/consent/ConsentForm$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/ads/consent/ConsentForm;->nonPersonalizedAdsOption:Z

    .line 9
    invoke-static {p1}, Lcom/google/ads/consent/ConsentForm$Builder;->access$400(Lcom/google/ads/consent/ConsentForm$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/ads/consent/ConsentForm;->adFreeOption:Z

    .line 10
    invoke-static {p1}, Lcom/google/ads/consent/ConsentForm$Builder;->access$500(Lcom/google/ads/consent/ConsentForm$Builder;)Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/consent/ConsentForm;->appPrivacyPolicyURL:Ljava/net/URL;

    .line 11
    new-instance p1, Landroid/app/Dialog;

    const v1, 0x1030010

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/google/ads/consent/ConsentForm;->dialog:Landroid/app/Dialog;

    .line 12
    sget-object v1, Lcom/google/ads/consent/ConsentForm$LoadState;->NOT_READY:Lcom/google/ads/consent/ConsentForm$LoadState;

    iput-object v1, p0, Lcom/google/ads/consent/ConsentForm;->loadState:Lcom/google/ads/consent/ConsentForm$LoadState;

    .line 13
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/ads/consent/ConsentForm;->webView:Landroid/webkit/WebView;

    const/4 v0, 0x0

    .line 14
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 15
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 16
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 17
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 18
    new-instance p1, Lcom/google/ads/consent/ConsentForm$2;

    invoke-direct {p1, p0}, Lcom/google/ads/consent/ConsentForm$2;-><init>(Lcom/google/ads/consent/ConsentForm;)V

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/consent/ConsentForm$Builder;Lcom/google/ads/consent/ConsentForm$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ads/consent/ConsentForm;-><init>(Lcom/google/ads/consent/ConsentForm$Builder;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/google/ads/consent/ConsentForm;Lcom/google/ads/consent/ConsentForm$LoadState;)Lcom/google/ads/consent/ConsentForm$LoadState;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/ads/consent/ConsentForm;->loadState:Lcom/google/ads/consent/ConsentForm$LoadState;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/ads/consent/ConsentForm;)Lcom/google/ads/consent/ConsentFormListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/ads/consent/ConsentForm;->listener:Lcom/google/ads/consent/ConsentFormListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/ads/consent/ConsentForm;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ads/consent/ConsentForm;->handleLoadComplete(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/ads/consent/ConsentForm;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ads/consent/ConsentForm;->handleDismiss(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/ads/consent/ConsentForm;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ads/consent/ConsentForm;->handleOpenBrowser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/ads/consent/ConsentForm;Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ads/consent/ConsentForm;->updateDialogContent(Landroid/webkit/WebView;)V

    return-void
.end method

.method private static createJavascriptCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "info"

    .line 2
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "args"

    .line 4
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 5
    new-instance p0, Lj60;

    invoke-direct {p0}, Lj60;-><init>()V

    invoke-virtual {p0, p1}, Lj60;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p0, "javascript:%s(%s)"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getAppIconURIString(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 3
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 6
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 7
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 8
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 10
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 11
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 12
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 13
    invoke-static {p0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "data:image/png;base64,"

    if-eqz v0, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method private static getApplicationName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleDismiss(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/ads/consent/ConsentForm$LoadState;->NOT_READY:Lcom/google/ads/consent/ConsentForm$LoadState;

    iput-object v0, p0, Lcom/google/ads/consent/ConsentForm;->loadState:Lcom/google/ads/consent/ConsentForm$LoadState;

    .line 2
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/ads/consent/ConsentForm;->listener:Lcom/google/ads/consent/ConsentFormListener;

    const-string v0, "No information provided."

    invoke-virtual {p1, v0}, Lcom/google/ads/consent/ConsentFormListener;->onConsentFormError(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Error"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->listener:Lcom/google/ads/consent/ConsentFormListener;

    invoke-virtual {v0, p1}, Lcom/google/ads/consent/ConsentFormListener;->onConsentFormError(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, -0x1

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "non_personalized"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "personalized"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "ad_free"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 8
    sget-object p1, Lcom/google/ads/consent/ConsentStatus;->UNKNOWN:Lcom/google/ads/consent/ConsentStatus;

    goto :goto_1

    .line 9
    :pswitch_0
    sget-object p1, Lcom/google/ads/consent/ConsentStatus;->NON_PERSONALIZED:Lcom/google/ads/consent/ConsentStatus;

    goto :goto_1

    .line 10
    :pswitch_1
    sget-object p1, Lcom/google/ads/consent/ConsentStatus;->PERSONALIZED:Lcom/google/ads/consent/ConsentStatus;

    :goto_1
    const/4 v2, 0x0

    goto :goto_2

    .line 11
    :pswitch_2
    sget-object p1, Lcom/google/ads/consent/ConsentStatus;->UNKNOWN:Lcom/google/ads/consent/ConsentStatus;

    .line 12
    :goto_2
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/consent/ConsentInformation;->getInstance(Landroid/content/Context;)Lcom/google/ads/consent/ConsentInformation;

    move-result-object v0

    const-string v1, "form"

    invoke-virtual {v0, p1, v1}, Lcom/google/ads/consent/ConsentInformation;->setConsentStatus(Lcom/google/ads/consent/ConsentStatus;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->listener:Lcom/google/ads/consent/ConsentFormListener;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/ads/consent/ConsentFormListener;->onConsentFormClosed(Lcom/google/ads/consent/ConsentStatus;Ljava/lang/Boolean;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x44b41ef8 -> :sswitch_2
        -0xf616830 -> :sswitch_1
        0x635b0c02 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleLoadComplete(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/google/ads/consent/ConsentForm$LoadState;->NOT_READY:Lcom/google/ads/consent/ConsentForm$LoadState;

    iput-object p1, p0, Lcom/google/ads/consent/ConsentForm;->loadState:Lcom/google/ads/consent/ConsentForm$LoadState;

    .line 3
    iget-object p1, p0, Lcom/google/ads/consent/ConsentForm;->listener:Lcom/google/ads/consent/ConsentFormListener;

    const-string v0, "No information"

    invoke-virtual {p1, v0}, Lcom/google/ads/consent/ConsentFormListener;->onConsentFormError(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "Error"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lcom/google/ads/consent/ConsentForm$LoadState;->NOT_READY:Lcom/google/ads/consent/ConsentForm$LoadState;

    iput-object v0, p0, Lcom/google/ads/consent/ConsentForm;->loadState:Lcom/google/ads/consent/ConsentForm$LoadState;

    .line 6
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->listener:Lcom/google/ads/consent/ConsentFormListener;

    invoke-virtual {v0, p1}, Lcom/google/ads/consent/ConsentFormListener;->onConsentFormError(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object p1, Lcom/google/ads/consent/ConsentForm$LoadState;->LOADED:Lcom/google/ads/consent/ConsentForm$LoadState;

    iput-object p1, p0, Lcom/google/ads/consent/ConsentForm;->loadState:Lcom/google/ads/consent/ConsentForm$LoadState;

    .line 8
    iget-object p1, p0, Lcom/google/ads/consent/ConsentForm;->listener:Lcom/google/ads/consent/ConsentFormListener;

    invoke-virtual {p1}, Lcom/google/ads/consent/ConsentFormListener;->onConsentFormLoaded()V

    :goto_0
    return-void
.end method

.method private handleOpenBrowser(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/ads/consent/ConsentForm;->listener:Lcom/google/ads/consent/ConsentFormListener;

    const-string v0, "No valid URL for browser navigation."

    invoke-virtual {p1, v0}, Lcom/google/ads/consent/ConsentFormListener;->onConsentFormError(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4
    iget-object p1, p0, Lcom/google/ads/consent/ConsentForm;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    iget-object p1, p0, Lcom/google/ads/consent/ConsentForm;->listener:Lcom/google/ads/consent/ConsentFormListener;

    const-string v0, "No Activity found to handle browser intent."

    invoke-virtual {p1, v0}, Lcom/google/ads/consent/ConsentFormListener;->onConsentFormError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateDialogContent(Landroid/webkit/WebView;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/ads/consent/ConsentForm;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/ads/consent/ConsentForm;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/google/ads/consent/ConsentForm;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/ads/consent/ConsentForm;->getAppIconURIString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_icon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-boolean v1, p0, Lcom/google/ads/consent/ConsentForm;->personalizedAdsOption:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "offer_personalized"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-boolean v1, p0, Lcom/google/ads/consent/ConsentForm;->nonPersonalizedAdsOption:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "offer_non_personalized"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-boolean v1, p0, Lcom/google/ads/consent/ConsentForm;->adFreeOption:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "offer_ad_free"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcom/google/ads/consent/ConsentForm;->context:Landroid/content/Context;

    .line 8
    invoke-static {v1}, Lcom/google/ads/consent/ConsentInformation;->getInstance(Landroid/content/Context;)Lcom/google/ads/consent/ConsentInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/consent/ConsentInformation;->isRequestLocationInEeaOrUnknown()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "is_request_in_eea_or_unknown"

    .line 9
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Lcom/google/ads/consent/ConsentForm;->appPrivacyPolicyURL:Ljava/net/URL;

    const-string v2, "app_privacy_url"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Lcom/google/ads/consent/ConsentForm;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/ads/consent/ConsentInformation;->getInstance(Landroid/content/Context;)Lcom/google/ads/consent/ConsentInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/consent/ConsentInformation;->loadConsentData()Lcom/google/ads/consent/ConsentData;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/google/ads/consent/ConsentData;->getSDKPlatformString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "plat"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "consent_info"

    .line 13
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v1, Lj60;

    invoke-direct {v1}, Lj60;-><init>()V

    invoke-virtual {v1, v0}, Lj60;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setUpConsentDialog"

    .line 15
    invoke-static {v1, v0}, Lcom/google/ads/consent/ConsentForm;->createJavascriptCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isShowing()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public load()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->loadState:Lcom/google/ads/consent/ConsentForm$LoadState;

    sget-object v1, Lcom/google/ads/consent/ConsentForm$LoadState;->LOADING:Lcom/google/ads/consent/ConsentForm$LoadState;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->listener:Lcom/google/ads/consent/ConsentFormListener;

    const-string v1, "Cannot simultaneously load multiple consent forms."

    invoke-virtual {v0, v1}, Lcom/google/ads/consent/ConsentFormListener;->onConsentFormError(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    sget-object v2, Lcom/google/ads/consent/ConsentForm$LoadState;->LOADED:Lcom/google/ads/consent/ConsentForm$LoadState;

    if-ne v0, v2, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->listener:Lcom/google/ads/consent/ConsentFormListener;

    invoke-virtual {v0}, Lcom/google/ads/consent/ConsentFormListener;->onConsentFormLoaded()V

    return-void

    .line 5
    :cond_1
    iput-object v1, p0, Lcom/google/ads/consent/ConsentForm;->loadState:Lcom/google/ads/consent/ConsentForm$LoadState;

    .line 6
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->webView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/consentform.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->loadState:Lcom/google/ads/consent/ConsentForm$LoadState;

    sget-object v1, Lcom/google/ads/consent/ConsentForm$LoadState;->LOADED:Lcom/google/ads/consent/ConsentForm$LoadState;

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->listener:Lcom/google/ads/consent/ConsentFormListener;

    const-string v1, "Consent form is not ready to be displayed."

    invoke-virtual {v0, v1}, Lcom/google/ads/consent/ConsentFormListener;->onConsentFormError(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/consent/ConsentInformation;->getInstance(Landroid/content/Context;)Lcom/google/ads/consent/ConsentInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/consent/ConsentInformation;->isTaggedForUnderAgeOfConsent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->listener:Lcom/google/ads/consent/ConsentFormListener;

    const-string v1, "Error: tagged for under age of consent"

    invoke-virtual {v0, v1}, Lcom/google/ads/consent/ConsentFormListener;->onConsentFormError(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 6
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/google/ads/consent/ConsentForm$3;

    invoke-direct {v1, p0}, Lcom/google/ads/consent/ConsentForm$3;-><init>(Lcom/google/ads/consent/ConsentForm;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 8
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 9
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->listener:Lcom/google/ads/consent/ConsentFormListener;

    const-string v1, "Consent form could not be displayed."

    invoke-virtual {v0, v1}, Lcom/google/ads/consent/ConsentFormListener;->onConsentFormError(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
