.class public abstract Lcom/camerasideas/collagemaker/activity/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseActivity"


# instance fields
.field protected mAppExitUtils:Lqq;

.field private mLifecycleObserver:Landroidx/lifecycle/c;

.field protected mTopSpace:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Landroidx/appcompat/app/i;->d:I

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Landroidx/appcompat/widget/o0;->a(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Lqq;

    invoke-direct {v0, p0}, Lqq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/BaseActivity;->mAppExitUtils:Lqq;

    .line 3
    new-instance v0, Lcom/camerasideas/collagemaker/activity/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/BaseActivity$1;-><init>(Lcom/camerasideas/collagemaker/activity/BaseActivity;)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/BaseActivity;->mLifecycleObserver:Landroidx/lifecycle/c;

    return-void
.end method

.method private n(Lxa0;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lxa0;->c()Z

    move-result v0

    const-string v1, "NotchHeight"

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lxa0;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lxa0;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/camerasideas/collagemaker/activity/BaseActivity;->onNotchReady(I)V

    .line 3
    invoke-virtual {p1}, Lxa0;->b()I

    move-result p1

    .line 4
    invoke-static {p0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    invoke-static {p0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method private setLocale(Landroid/content/res/Configuration;Ljava/util/Locale;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 4
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-le p2, v2, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 3
    iput v0, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 4
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    const/16 v1, 0x19

    if-gt v0, v1, :cond_1

    .line 5
    invoke-static {p0}, Lxq;->d(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lxq;->c(Landroid/content/Context;I)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/camerasideas/collagemaker/activity/BaseActivity;->setLocale(Landroid/content/res/Configuration;Ljava/util/Locale;)V

    .line 6
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lxq;->e(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected finishNewUserTrip()V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "isNewUser"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {p0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method protected abstract getTAG()Ljava/lang/String;
.end method

.method protected notchFit()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/camerasideas/collagemaker/appdata/f;->c(Landroid/content/Context;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 2
    sget-object v0, Lya0;->b:Lya0;

    new-instance v1, Lcom/camerasideas/collagemaker/activity/a;

    invoke-direct {v1, p0}, Lcom/camerasideas/collagemaker/activity/a;-><init>(Lcom/camerasideas/collagemaker/activity/BaseActivity;)V

    invoke-static {p0, v0, v1}, Lcom/wcl/notchfit/a;->a(Landroid/app/Activity;Lya0;Lcb0;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-static {}, Lbb0;->a()Lbb0;

    move-result-object v1

    invoke-virtual {v1}, Lbb0;->b()Lab0;

    move-result-object v1

    check-cast v1, Lza0;

    invoke-virtual {v1, p0, v0}, Lza0;->b(Landroid/app/Activity;Z)V

    .line 4
    invoke-static {p0}, Landroidx/core/app/b;->B0(Landroid/app/Activity;)V

    .line 5
    invoke-static {p0}, Lcom/camerasideas/collagemaker/appdata/f;->c(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/camerasideas/collagemaker/activity/BaseActivity;->onNotchReady(I)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lam;->a()Lam;

    move-result-object p1

    invoke-virtual {p1, p0}, Lam;->c(Ljava/lang/Object;)V

    .line 3
    invoke-static {p0}, Landroidx/core/app/b;->r0(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 4
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/f;

    move-result-object p1

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/BaseActivity;->mLifecycleObserver:Landroidx/lifecycle/c;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/f;->a(Landroidx/lifecycle/h;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lam;->a()Lam;

    move-result-object v0

    invoke-virtual {v0, p0}, Lam;->d(Ljava/lang/Object;)V

    .line 3
    invoke-static {p0}, Landroidx/core/app/b;->M0(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onEvent(Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/j;
    .end annotation

    return-void
.end method

.method protected onNotchReady(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/BaseActivity;->mTopSpace:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/BaseActivity;->mTopSpace:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    sget-object v0, Lcom/camerasideas/collagemaker/appdata/e;->c:Landroid/app/Activity;

    .line 3
    sget-object v0, Linshot/collage/adconfig/l;->f:Linshot/collage/adconfig/l;

    invoke-virtual {v0}, Linshot/collage/adconfig/l;->g()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    sget-object v0, Lcom/camerasideas/collagemaker/appdata/e;->c:Landroid/app/Activity;

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "photoeditor.layout.collagemaker.removeads"

    .line 1
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "SubscribePro"

    .line 2
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    :cond_0
    invoke-static {p0}, Landroidx/core/app/b;->g(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/BaseActivity;->removeAd()V

    .line 5
    invoke-static {p0}, Landroidx/core/app/b;->M0(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    const v0, 0x7f0802c8

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/BaseActivity;->mTopSpace:Landroid/view/View;

    return-void
.end method

.method public removeAd()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Linshot/collage/adconfig/f;->k:Linshot/collage/adconfig/f;

    invoke-virtual {v0}, Linshot/collage/adconfig/f;->j()V

    .line 2
    sget-object v0, Linshot/collage/adconfig/h;->g:Linshot/collage/adconfig/h;

    invoke-virtual {v0}, Linshot/collage/adconfig/h;->i()V

    .line 3
    sget-object v0, Linshot/collage/adconfig/l;->f:Linshot/collage/adconfig/l;

    invoke-virtual {v0}, Linshot/collage/adconfig/l;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "destroyAd error: "

    .line 4
    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseActivity"

    invoke-static {v2, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected return2MainActivity()V
    .locals 3

    const-string v0, "BaseActivity"

    const-string v1, "return2MainActivity"

    .line 1
    invoke-static {v0, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/camerasideas/collagemaker/activity/MainActivity;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Call return2MainActivity From MainActivity"

    .line 3
    invoke-static {v0, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5
    sget-object v1, Linshot/collage/adconfig/h;->g:Linshot/collage/adconfig/h;

    sget-object v2, Linshot/collage/adconfig/i;->c:Linshot/collage/adconfig/i;

    invoke-virtual {v1, v2}, Linshot/collage/adconfig/h;->g(Linshot/collage/adconfig/i;)V

    const/high16 v1, 0x4000000

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7
    const-class v1, Lcom/camerasideas/collagemaker/activity/MainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 8
    invoke-static {v1}, Lcom/camerasideas/collagemaker/appdata/e;->e(I)V

    .line 9
    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->k()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->c()V

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
