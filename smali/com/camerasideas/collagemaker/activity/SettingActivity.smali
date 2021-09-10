.class public Lcom/camerasideas/collagemaker/activity/SettingActivity;
.super Lcom/camerasideas/collagemaker/activity/BaseActivity;
.source "SourceFile"


# static fields
.field public static final synthetic d:I


# instance fields
.field private b:Landroidx/recyclerview/widget/RecyclerView;

.field private c:Lcom/camerasideas/collagemaker/activity/adapter/s;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getTAG()Ljava/lang/String;
    .locals 1

    const-string v0, "SettingActivity"

    return-object v0
.end method

.method public o(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;ILandroid/view/View;)V
    .locals 7

    const/4 p1, -0x1

    if-eq p3, p1, :cond_11

    .line 1
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/SettingActivity;->c:Lcom/camerasideas/collagemaker/activity/adapter/s;

    if-nez p2, :cond_0

    goto/16 :goto_3

    :cond_0
    if-ltz p3, :cond_2

    .line 2
    invoke-virtual {p2}, Lsr;->B()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-lt p3, p4, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p2}, Lsr;->B()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/camerasideas/collagemaker/activity/adapter/q;

    .line 4
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/adapter/q;->e()I

    move-result p1

    :cond_2
    :goto_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_10

    const/16 p3, 0xb

    if-eq p1, p3, :cond_b

    const/4 p3, 0x6

    const/4 p4, 0x0

    if-eq p1, p3, :cond_a

    const/4 p3, 0x7

    const/4 v0, 0x0

    if-eq p1, p3, :cond_8

    const/16 p3, 0x8

    if-eq p1, p3, :cond_6

    const-string p3, " \u786e \u5b9a "

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    const-string p1, "\u5173\u95ed"

    const-string p2, "true"

    const-string p4, "false"

    .line 5
    filled-new-array {p1, p2, p4}, [Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string p4, "ABTestFlag"

    invoke-interface {p2, p4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 7
    new-instance p4, Landroid/app/AlertDialog$Builder;

    invoke-direct {p4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/camerasideas/collagemaker/activity/r0;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/r0;-><init>(Lcom/camerasideas/collagemaker/activity/SettingActivity;)V

    .line 8
    invoke-virtual {p4, p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget-object p2, Lcom/camerasideas/collagemaker/activity/l0;->b:Lcom/camerasideas/collagemaker/activity/l0;

    .line 9
    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_3

    .line 11
    :pswitch_1
    invoke-static {p0}, Landroidx/core/app/b;->d0(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_3

    .line 12
    :cond_3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 13
    sget-object p1, Lcom/camerasideas/collagemaker/appdata/c;->c:Lcom/camerasideas/collagemaker/appdata/c;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/appdata/c;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PRO_FROM"

    invoke-virtual {v2, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const-class v1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/SubscribeProFragment;

    const v3, 0x7f080135

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroidx/core/app/b;->s(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;Landroid/os/Bundle;IZZ)Landroidx/fragment/app/Fragment;

    goto/16 :goto_3

    .line 15
    :pswitch_2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0b0045

    invoke-virtual {p1, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p3, 0x7f0800a9

    .line 16
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const p4, 0x7f08021c

    .line 17
    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroidx/appcompat/widget/AppCompatRadioButton;

    const v1, 0x7f0800b9

    .line 18
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f08021e

    .line 19
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatRadioButton;

    .line 20
    invoke-static {p0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "EnableHighResolution"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    invoke-virtual {p4, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 22
    :cond_4
    invoke-virtual {v2, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 23
    :goto_1
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 27
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-static {p0}, Lc2;->h(Landroid/content/Context;)I

    move-result v0

    int-to-double v3, v0

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-int v0, v3

    const/4 v3, -0x2

    invoke-virtual {p2, v0, v3}, Landroid/view/Window;->setLayout(II)V

    .line 28
    :cond_5
    new-instance p2, Lcom/camerasideas/collagemaker/activity/q0;

    invoke-direct {p2, p0, p4, v2, p1}, Lcom/camerasideas/collagemaker/activity/q0;-><init>(Lcom/camerasideas/collagemaker/activity/SettingActivity;Landroidx/appcompat/widget/AppCompatRadioButton;Landroidx/appcompat/widget/AppCompatRadioButton;Landroid/app/Dialog;)V

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    new-instance p2, Lcom/camerasideas/collagemaker/activity/o0;

    invoke-direct {p2, p0, p4, v2, p1}, Lcom/camerasideas/collagemaker/activity/o0;-><init>(Lcom/camerasideas/collagemaker/activity/SettingActivity;Landroidx/appcompat/widget/AppCompatRadioButton;Landroidx/appcompat/widget/AppCompatRadioButton;Landroid/app/Dialog;)V

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :pswitch_3
    const-string p1, "Admob"

    const-string p4, "Fan"

    const-string v1, "Vungle"

    .line 30
    filled-new-array {p1, p4, v1}, [Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x3

    new-array p4, p4, [Z

    .line 31
    aget-object v1, p1, v0

    .line 32
    invoke-static {p0, v1}, Linshot/collage/adconfig/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    aput-boolean v1, p4, v0

    aget-object v0, p1, p2

    .line 33
    invoke-static {p0, v0}, Linshot/collage/adconfig/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    aput-boolean v0, p4, p2

    const/4 p2, 0x2

    aget-object v0, p1, p2

    .line 34
    invoke-static {p0, v0}, Linshot/collage/adconfig/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    aput-boolean v0, p4, p2

    .line 35
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/camerasideas/collagemaker/activity/s0;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/s0;-><init>(Lcom/camerasideas/collagemaker/activity/SettingActivity;[Ljava/lang/String;)V

    .line 36
    invoke-virtual {p2, p1, p4, v0}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget-object p2, Lcom/camerasideas/collagemaker/activity/n0;->b:Lcom/camerasideas/collagemaker/activity/n0;

    .line 37
    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_3

    .line 39
    :pswitch_4
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/g;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroidx/fragment/app/g;->a()Landroidx/fragment/app/m;

    move-result-object p1

    const p2, 0x7f080136

    const-class p3, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;

    .line 41
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    .line 42
    invoke-static {p0, p3, p4}, Landroidx/fragment/app/Fragment;->Y(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    .line 43
    const-class p4, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p2, p3, p4}, Landroidx/fragment/app/m;->b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/m;

    const-class p2, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;

    .line 44
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/fragment/app/m;->e(Ljava/lang/String;)Landroidx/fragment/app/m;

    .line 45
    invoke-virtual {p1}, Landroidx/fragment/app/m;->g()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 47
    :cond_6
    invoke-static {p0}, Luq;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 48
    invoke-static {p0}, Luq;->h(Lcom/camerasideas/collagemaker/activity/BaseActivity;)V

    goto/16 :goto_3

    .line 49
    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lc2;->q(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 50
    :cond_8
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.intent.action.SEND"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "text/html"

    .line 51
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const p3, 0x7f0e013c

    .line 52
    invoke-virtual {p0, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p4

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-array p2, p2, [Ljava/lang/Object;

    const-string p4, "<br/><br/><a href=\'https://play.google.com/store/apps/details?id=photoeditor.cutout.backgrounderaser\'/>https://play.google.com/store/apps/details?id=photoeditor.cutout.backgrounderaser"

    aput-object p4, p2, v0

    const p4, 0x7f0e0139

    .line 53
    invoke-virtual {p0, p4, p2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    const-string p4, "android.intent.extra.TEXT"

    .line 54
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string p2, "com.google.android.gm"

    .line 55
    invoke-static {p0, p2}, Lc2;->r(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_9

    .line 56
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 57
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 58
    :cond_9
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 59
    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 60
    :cond_a
    const-class p1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/p;

    .line 61
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p4}, Landroidx/fragment/app/Fragment;->Y(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lsm;

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/g;

    move-result-object p2

    invoke-virtual {p1, p2}, Lsm;->x1(Landroidx/fragment/app/g;)V

    goto/16 :goto_3

    :cond_b
    const-string p1, "TesterLog-Setting"

    const-string p2, "\u70b9\u51fb\u9690\u79c1\u653f\u7b56"

    .line 63
    invoke-static {p1, p2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/camerasideas/collagemaker/activity/PolicyActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    sget-object p2, Lcom/camerasideas/collagemaker/appdata/b;->k:Ljava/lang/String;

    .line 66
    invoke-static {p0}, Lcc0;->f(Landroid/content/Context;)I

    move-result p3

    if-nez p3, :cond_c

    .line 67
    sget-object p2, Lcom/camerasideas/collagemaker/appdata/b;->n:Ljava/lang/String;

    .line 68
    :cond_c
    invoke-static {p0}, Lc2;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "ko"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 69
    sget-object p2, Lcom/camerasideas/collagemaker/appdata/b;->m:Ljava/lang/String;

    goto :goto_2

    .line 70
    :cond_d
    invoke-static {p0}, Lc2;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "ja"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_e

    .line 71
    sget-object p2, Lcom/camerasideas/collagemaker/appdata/b;->l:Ljava/lang/String;

    :cond_e
    :goto_2
    const-string p3, "https"

    .line 72
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_f

    const-string p4, "http"

    .line 73
    invoke-virtual {p2, p4, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    :cond_f
    const-string p3, "url"

    .line 74
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, -0x1000000

    const-string p3, "color"

    .line 75
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "email"

    const-string p3, "collageteam.feedback@gmail.com"

    .line 76
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p2, 0x7f0e0134

    .line 77
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "title"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 79
    :cond_10
    new-instance p1, Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog;

    invoke-direct {p1}, Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog;-><init>()V

    const p2, 0x7f0e0036

    .line 80
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 81
    new-instance p2, Lcom/camerasideas/collagemaker/activity/t0;

    invoke-direct {p2, p0, p1}, Lcom/camerasideas/collagemaker/activity/t0;-><init>(Lcom/camerasideas/collagemaker/activity/SettingActivity;Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog;)V

    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog;->v1(Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog$c;)V

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/g;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Landroidx/fragment/app/b;->t1(Landroidx/fragment/app/g;Ljava/lang/String;)V

    :cond_11
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_1

    .line 2
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)V

    .line 4
    sget-object p3, Ldq;->e:Ljava/lang/String;

    const-string v0, "file"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "TesterLog-Setting"

    if-nez v1, :cond_0

    const-string p3, "\u7528\u6237\u9009\u53d6\u65b0\u7684\u4fdd\u5b58\u8def\u5f84\uff1a"

    .line 6
    invoke-static {p3}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 7
    invoke-static {v2, p3}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p3

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    const-string v0, "savePath"

    invoke-interface {p3, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 10
    invoke-static {p0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p3, "IsSavePathChanged"

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 11
    new-instance p1, Lcom/camerasideas/collagemaker/activity/adapter/s;

    invoke-static {p0}, Lcom/camerasideas/collagemaker/activity/adapter/q;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/camerasideas/collagemaker/activity/adapter/s;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/SettingActivity;->c:Lcom/camerasideas/collagemaker/activity/adapter/s;

    .line 12
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/SettingActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u7528\u6237\u6ca1\u6709\u9009\u53d6\u65b0\u7684\u4fdd\u5b58\u8def\u5f84\uff0c\u5f53\u524d\u4f7f\u7528\u7684\u4fdd\u5b58\u8def\u5f84\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {v2, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/core/app/b;->D(Landroidx/appcompat/app/AppCompatActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/BaseActivity;->return2MainActivity()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/camerasideas/collagemaker/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0021

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-le p1, v2, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v2, -0x1000000

    .line 5
    invoke-virtual {p1, v2}, Landroid/view/Window;->setNavigationBarColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    new-instance p1, Lvq;

    invoke-direct {p1, p0}, Lvq;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lvq;->b()V

    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_1

    return-void

    :cond_1
    const p1, 0x7f080151

    .line 8
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 9
    new-instance v2, Lcom/camerasideas/collagemaker/activity/m0;

    invoke-direct {v2, p0}, Lcom/camerasideas/collagemaker/activity/m0;-><init>(Lcom/camerasideas/collagemaker/activity/SettingActivity;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080264

    .line 10
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/SettingActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 12
    new-instance p1, Lcom/camerasideas/collagemaker/activity/adapter/s;

    invoke-static {p0}, Lcom/camerasideas/collagemaker/activity/adapter/q;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/camerasideas/collagemaker/activity/adapter/s;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/SettingActivity;->c:Lcom/camerasideas/collagemaker/activity/adapter/s;

    .line 13
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/SettingActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 14
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/SettingActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Ldm;->d(Landroidx/recyclerview/widget/RecyclerView;)Ldm;

    move-result-object p1

    new-instance v0, Lcom/camerasideas/collagemaker/activity/p0;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/p0;-><init>(Lcom/camerasideas/collagemaker/activity/SettingActivity;)V

    invoke-virtual {p1, v0}, Ldm;->e(Ldm$d;)Ldm;

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const-string p1, "SettingActivity"

    const-string p2, "Received response for storage permissions request."

    .line 2
    invoke-static {p1, p2}, Lem;->n(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p3}, Lhm;->e([I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lyp;->F()Lyp;

    move-result-object p1

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p2, Lml;->i:Ljava/util/concurrent/Executor;

    new-instance p3, Lop;

    invoke-direct {p3, p1}, Lop;-><init>(Lyp;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p0}, Lcom/camerasideas/collagemaker/appdata/f;->i(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 8
    invoke-static {p0, p1}, Lhm;->b(Landroid/app/Activity;Ljava/lang/String;)Z

    :cond_1
    const/4 p1, 0x1

    .line 9
    invoke-static {p0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string p3, "HasDeniedStorageAccess"

    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 10
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/camerasideas/collagemaker/activity/BaseActivity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/camerasideas/collagemaker/activity/BaseActivity;->onStart()V

    const-string v0, "PV"

    const-string v1, "SettingPage"

    .line 2
    invoke-static {p0, v0, v1}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public p(Landroidx/appcompat/widget/AppCompatRadioButton;Landroidx/appcompat/widget/AppCompatRadioButton;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p4

    invoke-interface {p4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p4

    const/4 v0, 0x1

    const-string v1, "EnableHighResolution"

    invoke-interface {p4, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p4

    invoke-interface {p4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p2, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 4
    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V

    .line 5
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/SettingActivity;->c:Lcom/camerasideas/collagemaker/activity/adapter/s;

    invoke-virtual {p1, v0}, Lsr;->D(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/camerasideas/collagemaker/activity/adapter/q;

    const p2, 0x7f0e007d

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/adapter/q;->g(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/SettingActivity;->c:Lcom/camerasideas/collagemaker/activity/adapter/s;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->f()V

    return-void
.end method

.method public q(Landroidx/appcompat/widget/AppCompatRadioButton;Landroidx/appcompat/widget/AppCompatRadioButton;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p4

    invoke-interface {p4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p4

    const/4 v0, 0x0

    const-string v1, "EnableHighResolution"

    invoke-interface {p4, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p4

    invoke-interface {p4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p2, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 4
    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V

    .line 5
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/SettingActivity;->c:Lcom/camerasideas/collagemaker/activity/adapter/s;

    invoke-virtual {p2, p1}, Lsr;->D(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/camerasideas/collagemaker/activity/adapter/q;

    const p2, 0x7f0e0109

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/adapter/q;->g(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/SettingActivity;->c:Lcom/camerasideas/collagemaker/activity/adapter/s;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->f()V

    return-void
.end method
