.class public Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog;
.super Landroidx/fragment/app/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog$CenterLayoutManager;,
        Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog$c;,
        Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog$a;,
        Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog$b;
    }
.end annotation


# instance fields
.field private f0:Landroidx/recyclerview/widget/RecyclerView;

.field private g0:Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/b;-><init>()V

    return-void
.end method

.method static synthetic u1(Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog;)Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog;->g0:Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog$c;

    return-object p0
.end method


# virtual methods
.method public p1(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b0044

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 5
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const v2, 0x7f0802db

    .line 6
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v2, 0x7f080220

    .line 7
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog;->f0:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    new-instance v2, Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog$CenterLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v3, 0x0

    invoke-direct {v2, p1, v1, v3}, Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog$CenterLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 9
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog;->f0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 10
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog;->f0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog$b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog$b;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog;Landroid/content/Context;)V

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lxq;->d(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->Y0(I)V

    .line 12
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v1, 0x7f050133

    .line 14
    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 15
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    .line 16
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v2, 0x3f4ccccd    # 0.8f

    .line 17
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/app/b;->V(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/app/b;->U(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f5eb852    # 0.87f

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 20
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-object v0
.end method

.method public v1(Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog;->g0:Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog$c;

    return-void
.end method
