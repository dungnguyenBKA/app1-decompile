.class public final synthetic Lcom/camerasideas/collagemaker/activity/fragment/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog$b;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog$b;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/a;->b:Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog$b;

    iput p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/a;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/a;->b:Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog$b;

    iget v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/a;->c:I

    .line 1
    iget-object p1, p1, Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog$b;->d:Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog;->u1(Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog;)Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog$c;

    move-result-object p1

    check-cast p1, Lcom/camerasideas/collagemaker/activity/t0;

    .line 2
    iget-object v1, p1, Lcom/camerasideas/collagemaker/activity/t0;->a:Lcom/camerasideas/collagemaker/activity/SettingActivity;

    iget-object p1, p1, Lcom/camerasideas/collagemaker/activity/t0;->b:Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/b;->l1()V

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9009\u4e2d\u7684\u8bed\u8a00\uff1a"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {}, Lxq;->f()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, Lxq;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "TesterLog-Setting"

    .line 7
    invoke-static {v2, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {v1, v0}, Lxq;->a(Landroid/content/Context;I)Landroid/content/Context;

    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 11
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 12
    invoke-static {v1, v0}, Lxq;->c(Landroid/content/Context;I)Ljava/util/Locale;

    move-result-object v0

    .line 13
    iput-object v0, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 14
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_0

    .line 15
    new-instance v5, Landroid/os/LocaleList;

    new-array v3, v3, [Ljava/util/Locale;

    const/4 v6, 0x0

    aput-object v0, v3, v6

    invoke-direct {v5, v3}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 16
    invoke-static {v5}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    .line 17
    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 19
    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 20
    :cond_0
    invoke-virtual {p1, v4, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 21
    new-instance p1, Landroid/content/Intent;

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    invoke-virtual {v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 24
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method
