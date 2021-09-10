.class public Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/o;
.super Landroidx/fragment/app/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/b;-><init>()V

    return-void
.end method


# virtual methods
.method public p1(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const v0, 0x7f0e00d0

    .line 1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->T(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const v0, 0x7f0e0148

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->T(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const v0, 0x7f0e0153

    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->T(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, p1, v2

    const-string v0, "%s\n%s\n%s"

    .line 4
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v0, Landroidx/appcompat/app/g$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/appcompat/app/g$a;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/g$a;->d(Z)Landroidx/appcompat/app/g$a;

    const v1, 0x7f0e010f

    .line 7
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->T(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/g$a;->o(Ljava/lang/CharSequence;)Landroidx/appcompat/app/g$a;

    const v1, 0x7f0e00d1

    .line 8
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->T(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/o$a;

    invoke-direct {v2, p0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/o$a;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/o;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/g$a;->l(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/g$a;

    .line 9
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/g$a;->h(Ljava/lang/CharSequence;)Landroidx/appcompat/app/g$a;

    .line 10
    invoke-virtual {v0}, Landroidx/appcompat/app/g$a;->a()Landroidx/appcompat/app/g;

    move-result-object p1

    return-object p1
.end method
