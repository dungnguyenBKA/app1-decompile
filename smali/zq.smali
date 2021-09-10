.class Lzq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd0;


# instance fields
.field final synthetic a:Lcom/camerasideas/collagemaker/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/BaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzq;->a:Lcom/camerasideas/collagemaker/activity/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lzq;->a:Lcom/camerasideas/collagemaker/activity/BaseActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/camerasideas/collagemaker/appdata/f;->l(Landroid/content/Context;Z)V

    .line 2
    iget-object v0, p0, Lzq;->a:Lcom/camerasideas/collagemaker/activity/BaseActivity;

    const-string v1, "Click_Rate"

    const-string v2, "RateUs"

    invoke-static {v0, v1, v2}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lzq;->a:Lcom/camerasideas/collagemaker/activity/BaseActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/camerasideas/collagemaker/appdata/f;->l(Landroid/content/Context;Z)V

    .line 2
    iget-object v0, p0, Lzq;->a:Lcom/camerasideas/collagemaker/activity/BaseActivity;

    const-string v1, "Click_Rate"

    const-string v2, "SendFeedback"

    invoke-static {v0, v1, v2}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lzq;->a:Lcom/camerasideas/collagemaker/activity/BaseActivity;

    .line 4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "error report description"

    const-string v3, ""

    .line 5
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    const-class v2, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/k;

    .line 7
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroidx/fragment/app/Fragment;->Y(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lsm;

    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/g;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsm;->x1(Landroidx/fragment/app/g;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lzq;->a:Lcom/camerasideas/collagemaker/activity/BaseActivity;

    const-string v0, "-"

    invoke-static {p2, v0, p3}, Lic;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UserEvent/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "FbAnalyticsUtils"

    invoke-static {v0, p3}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 4
    invoke-static {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    .line 5
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "Content"

    .line 6
    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Click_Rate"

    .line 7
    invoke-virtual {p1, p2, p3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method
