.class public Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;
.super Lum;
.source "SourceFile"

# interfaces
.implements Lyp$e;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lyp$f;
.implements Lcom/camerasideas/collagemaker/network/a;


# instance fields
.field private Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

.field private Z:Lcom/camerasideas/collagemaker/activity/adapter/u;

.field private a0:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private b0:Ljava/lang/String;

.field private c0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d0:Ldm$d;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lum;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->c0:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel$a;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel$a;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->d0:Ldm$d;

    return-void
.end method

.method static synthetic o1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;)Lcom/camerasideas/collagemaker/activity/adapter/u;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->Z:Lcom/camerasideas/collagemaker/activity/adapter/u;

    return-object p0
.end method

.method static synthetic p1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;)Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    return-object p0
.end method

.method static synthetic q1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Ltm;->U:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic r1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Ltm;->U:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic s1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;)Landroidx/appcompat/app/AppCompatActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    return-object p0
.end method

.method static synthetic t1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->b0:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic u1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->c0:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public D0(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lvm;->D0(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->M()Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 3
    instance-of p2, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;

    if-eqz p2, :cond_1

    .line 4
    check-cast p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;

    .line 5
    iget-object p1, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mEditText:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    .line 6
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object p1

    if-nez p1, :cond_1

    .line 8
    :cond_0
    iget-object p1, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const-class p2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;

    invoke-static {p1, p2}, Landroidx/core/app/b;->t0(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)V

    return-void

    .line 9
    :cond_1
    new-instance p1, Lcom/camerasideas/collagemaker/activity/adapter/u;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/camerasideas/collagemaker/activity/adapter/u;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->Z:Lcom/camerasideas/collagemaker/activity/adapter/u;

    .line 10
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object p2, p0, Ltm;->U:Landroid/content/Context;

    const/4 v0, 0x3

    invoke-direct {p1, p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->a0:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 11
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 12
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->Z:Lcom/camerasideas/collagemaker/activity/adapter/u;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 13
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$l;

    move-result-object p1

    .line 14
    instance-of p2, p1, Landroidx/recyclerview/widget/a0;

    if-eqz p2, :cond_2

    .line 15
    check-cast p1, Landroidx/recyclerview/widget/a0;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/a0;->t(Z)V

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->Z:Lcom/camerasideas/collagemaker/activity/adapter/u;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object p2

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->l()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/adapter/u;->F(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->a0:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->Z:Lcom/camerasideas/collagemaker/activity/adapter/u;

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/activity/adapter/u;->C()I

    move-result p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->O()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06024f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->R1(II)V

    .line 18
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Ldm;->d(Landroidx/recyclerview/widget/RecyclerView;)Ldm;

    move-result-object p1

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->d0:Ldm$d;

    invoke-virtual {p1, p2}, Ldm;->e(Ldm$d;)Ldm;

    .line 19
    invoke-static {}, Lyp;->F()Lyp;

    move-result-object p1

    invoke-virtual {p1, p0}, Lyp;->x(Lyp$e;)V

    .line 20
    invoke-static {p0}, Landroidx/core/app/b;->r0(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 21
    invoke-static {}, Lyp;->F()Lyp;

    move-result-object p1

    invoke-virtual {p1, p0}, Lyp;->y(Lyp$f;)V

    .line 22
    invoke-static {}, Lcom/camerasideas/collagemaker/network/b;->a()Lcom/camerasideas/collagemaker/network/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/camerasideas/collagemaker/network/b;->c(Lcom/camerasideas/collagemaker/network/a;)V

    .line 23
    iget-object p1, p0, Ltm;->U:Landroid/content/Context;

    invoke-static {p1}, Landroidx/core/app/b;->f0(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    const p1, 0x7f0e00bf

    .line 24
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->T(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmr;->d(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lyp;->F()Lyp;

    move-result-object v0

    invoke-virtual {v0}, Lyp;->K()V

    :cond_0
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->c0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->Z:Lcom/camerasideas/collagemaker/activity/adapter/u;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "font_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->Z:Lcom/camerasideas/collagemaker/activity/adapter/u;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/activity/adapter/u;->B(Ljava/lang/String;)I

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->Z:Lcom/camerasideas/collagemaker/activity/adapter/u;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->g(I)V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method protected m1()I
    .locals 1

    const v0, 0x7f0b005a

    return v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 2

    const-string v0, "font_"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->Z:Lcom/camerasideas/collagemaker/activity/adapter/u;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->c0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->b0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->Z:Lcom/camerasideas/collagemaker/activity/adapter/u;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/activity/adapter/u;->B(Ljava/lang/String;)I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->Z:Lcom/camerasideas/collagemaker/activity/adapter/u;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->g(I)V

    .line 7
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->Z:Lcom/camerasideas/collagemaker/activity/adapter/u;

    invoke-virtual {v1, v0}, Lcom/camerasideas/collagemaker/activity/adapter/u;->E(I)V

    .line 8
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->Z:Lcom/camerasideas/collagemaker/activity/adapter/u;

    invoke-virtual {v1, v0}, Lcom/camerasideas/collagemaker/activity/adapter/u;->z(I)Lwn;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    iget-object v0, v0, Lwn;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->r(Ljava/lang/String;)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->c0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->c0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected n1()Lyn;
    .locals 1

    .line 1
    new-instance v0, Lxn;

    invoke-direct {v0}, Lxn;-><init>()V

    return-object v0
.end method

.method public o0()V
    .locals 1

    .line 1
    invoke-super {p0}, Lvm;->o0()V

    .line 2
    invoke-static {}, Lyp;->F()Lyp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lyp;->T(Lyp$e;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "SubscribePro"

    .line 1
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->Z:Lcom/camerasideas/collagemaker/activity/adapter/u;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->f()V

    :cond_0
    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->c0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->Z:Lcom/camerasideas/collagemaker/activity/adapter/u;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/activity/adapter/u;->F(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public s(IZ)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const p1, 0x7f0e00c0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->T(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmr;->d(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->Z:Lcom/camerasideas/collagemaker/activity/adapter/u;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/adapter/u;->A()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->Z:Lcom/camerasideas/collagemaker/activity/adapter/u;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/adapter/u;->A()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x3

    if-ge p1, p2, :cond_1

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->Z:Lcom/camerasideas/collagemaker/activity/adapter/u;

    iget-object p2, p0, Ltm;->U:Landroid/content/Context;

    invoke-static {p2}, Lvn;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/adapter/u;->D(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public u(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->c0:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->Z:Lcom/camerasideas/collagemaker/activity/adapter/u;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const-string p2, "font_"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->Z:Lcom/camerasideas/collagemaker/activity/adapter/u;

    invoke-virtual {p2, p1}, Lcom/camerasideas/collagemaker/activity/adapter/u;->B(Ljava/lang/String;)I

    move-result p1

    .line 4
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->Z:Lcom/camerasideas/collagemaker/activity/adapter/u;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->g(I)V

    :cond_0
    return-void
.end method
