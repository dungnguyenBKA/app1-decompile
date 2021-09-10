.class public final synthetic Lcom/camerasideas/collagemaker/activity/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb0;


# instance fields
.field public final synthetic a:Lcom/camerasideas/collagemaker/activity/BaseActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/camerasideas/collagemaker/activity/BaseActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/a;->a:Lcom/camerasideas/collagemaker/activity/BaseActivity;

    return-void
.end method


# virtual methods
.method public final a(Lxa0;)V
    .locals 3

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/a;->a:Lcom/camerasideas/collagemaker/activity/BaseActivity;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lxa0;->c()Z

    move-result v1

    const-string v2, "NotchHeight"

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lxa0;->b()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lxa0;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/camerasideas/collagemaker/activity/BaseActivity;->onNotchReady(I)V

    .line 4
    invoke-virtual {p1}, Lxa0;->b()I

    move-result p1

    .line 5
    invoke-static {v0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    invoke-static {v0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method
