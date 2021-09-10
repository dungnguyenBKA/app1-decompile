.class public Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;
.super Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;
.source "SourceFile"

# interfaces
.implements Lyp$e;
.implements Lyp$f;
.implements Lcom/camerasideas/collagemaker/network/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0<",
        "Ljava/lang/Object;",
        "Lno;",
        ">;",
        "Ljava/lang/Object;",
        "Lyp$e;",
        "Lyp$f;",
        "Lcom/camerasideas/collagemaker/network/a;"
    }
.end annotation


# instance fields
.field private e0:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private f0:Lcom/camerasideas/collagemaker/activity/adapter/i;

.field private g0:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private h0:Lcom/camerasideas/collagemaker/activity/adapter/e;

.field private i0:Z

.field private j0:Z

.field private k0:Z

.field private l0:I

.field private m0:Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTab:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private n0:Ljava/lang/String;

.field private o0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p0:Ldm$d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->o0:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment$b;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment$b;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->p0:Ldm$d;

    return-void
.end method

.method static synthetic A1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->n0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic B1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->n0:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic C1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->o0:Ljava/util/List;

    return-object p0
.end method

.method static synthetic D1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->e0:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic E1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->i0:Z

    return p0
.end method

.method static synthetic F1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->i0:Z

    return p1
.end method

.method static synthetic G1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Ltm;->U:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic H1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->k0:Z

    return p0
.end method

.method static synthetic I1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->k0:Z

    return p1
.end method

.method static synthetic J1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Ltm;->U:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic K1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;)Lcom/camerasideas/collagemaker/activity/adapter/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->f0:Lcom/camerasideas/collagemaker/activity/adapter/i;

    return-object p0
.end method

.method static synthetic L1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Ltm;->U:Landroid/content/Context;

    return-object p0
.end method

.method static M1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->f0:Lcom/camerasideas/collagemaker/activity/adapter/i;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/adapter/i;->b()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->h0:Lcom/camerasideas/collagemaker/activity/adapter/e;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/adapter/e;->b()I

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->f0:Lcom/camerasideas/collagemaker/activity/adapter/i;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/activity/adapter/i;->z(I)Lmn;

    move-result-object v0

    invoke-virtual {v0}, Lmn;->e()Lhq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->f0:Lcom/camerasideas/collagemaker/activity/adapter/i;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/activity/adapter/i;->z(I)Lmn;

    move-result-object p1

    invoke-virtual {p1}, Lmn;->e()Lhq;

    move-result-object p1

    invoke-virtual {p1}, Lhq;->f()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->h0:Lcom/camerasideas/collagemaker/activity/adapter/e;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/activity/adapter/e;->A(Ljava/lang/String;)I

    move-result p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->P1(I)V

    .line 7
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->h0:Lcom/camerasideas/collagemaker/activity/adapter/e;

    invoke-virtual {p0, p1}, Lcom/camerasideas/collagemaker/activity/adapter/e;->C(I)V

    :cond_1
    return-void
.end method

.method static synthetic x1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->j0:Z

    return p0
.end method

.method static synthetic y1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->j0:Z

    return p1
.end method

.method static synthetic z1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->l0:I

    return p0
.end method


# virtual methods
.method public D0(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->D0(Landroid/view/View;Landroid/os/Bundle;)V

    if-nez p2, :cond_5

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->b0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->m0:Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent;

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "mEventArgument"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent;

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->m0:Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent;

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->d0:Landroid/view/View;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Luq;->s(Landroid/view/View;I)V

    .line 6
    iget-object p1, p0, Ltm;->U:Landroid/content/Context;

    invoke-static {p1}, Lln;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 7
    new-instance p2, Lcom/camerasideas/collagemaker/activity/adapter/e;

    iget-object v0, p0, Ltm;->U:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Lcom/camerasideas/collagemaker/activity/adapter/e;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->h0:Lcom/camerasideas/collagemaker/activity/adapter/e;

    .line 8
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->mTab:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/camerasideas/collagemaker/activity/adapter/j;

    iget-object v1, p0, Ltm;->U:Landroid/content/Context;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lc2;->b(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Ltm;->U:Landroid/content/Context;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v2, v3}, Lc2;->b(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/camerasideas/collagemaker/activity/adapter/j;-><init>(IZI)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 9
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->g0:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 10
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->mTab:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 11
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->mTab:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->h0:Lcom/camerasideas/collagemaker/activity/adapter/e;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 12
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->mTab:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p2}, Ldm;->d(Landroidx/recyclerview/widget/RecyclerView;)Ldm;

    move-result-object p2

    new-instance v1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/d0;

    invoke-direct {v1, p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/d0;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;)V

    invoke-virtual {p2, v1}, Ldm;->e(Ldm$d;)Ldm;

    .line 13
    new-instance p2, Lcom/camerasideas/collagemaker/activity/adapter/i;

    iget-object v1, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {p1}, Lln;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lcom/camerasideas/collagemaker/activity/adapter/i;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->f0:Lcom/camerasideas/collagemaker/activity/adapter/i;

    .line 14
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 15
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/camerasideas/collagemaker/activity/adapter/k;

    iget-object v1, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Lc2;->b(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {p2, v1, v3}, Lcom/camerasideas/collagemaker/activity/adapter/k;-><init>(IZ)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 16
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->e0:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 17
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 18
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Ldm;->d(Landroidx/recyclerview/widget/RecyclerView;)Ldm;

    move-result-object p1

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->p0:Ldm$d;

    invoke-virtual {p1, p2}, Ldm;->e(Ldm$d;)Ldm;

    .line 19
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->f0:Lcom/camerasideas/collagemaker/activity/adapter/i;

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/activity/adapter/i;->E(I)V

    .line 20
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->b0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->K()Lmn;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 21
    invoke-virtual {p1}, Lmn;->e()Lhq;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 22
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->f0:Lcom/camerasideas/collagemaker/activity/adapter/i;

    invoke-virtual {p1}, Lmn;->e()Lhq;

    move-result-object p1

    iget-object p1, p1, Lfq;->h:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/camerasideas/collagemaker/activity/adapter/i;->B(Ljava/lang/String;)I

    move-result p1

    .line 23
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->f0:Lcom/camerasideas/collagemaker/activity/adapter/i;

    invoke-virtual {p2, p1}, Lcom/camerasideas/collagemaker/activity/adapter/i;->E(I)V

    .line 24
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->e0:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Ltm;->U:Landroid/content/Context;

    invoke-static {v0}, Lc2;->h(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p2, p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->R1(II)V

    goto :goto_0

    .line 25
    :cond_2
    invoke-virtual {p1}, Lmn;->a()I

    move-result p2

    if-eqz p2, :cond_3

    .line 26
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->f0:Lcom/camerasideas/collagemaker/activity/adapter/i;

    invoke-virtual {p1}, Lmn;->a()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/camerasideas/collagemaker/activity/adapter/i;->C(I)I

    move-result p1

    .line 27
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->f0:Lcom/camerasideas/collagemaker/activity/adapter/i;

    invoke-virtual {p2, p1}, Lcom/camerasideas/collagemaker/activity/adapter/i;->E(I)V

    .line 28
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->e0:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Ltm;->U:Landroid/content/Context;

    invoke-static {v0}, Lc2;->h(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p2, p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->R1(II)V

    .line 29
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment$a;

    invoke-direct {p2, p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment$a;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 30
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->b0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1, v3}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->m0(I)Z

    .line 31
    invoke-static {}, Lyp;->F()Lyp;

    move-result-object p1

    invoke-virtual {p1, p0}, Lyp;->x(Lyp$e;)V

    .line 32
    invoke-static {}, Lyp;->F()Lyp;

    move-result-object p1

    invoke-virtual {p1, p0}, Lyp;->y(Lyp$f;)V

    .line 33
    invoke-static {}, Lcom/camerasideas/collagemaker/network/b;->a()Lcom/camerasideas/collagemaker/network/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/camerasideas/collagemaker/network/b;->c(Lcom/camerasideas/collagemaker/network/a;)V

    .line 34
    iget-object p1, p0, Ltm;->U:Landroid/content/Context;

    invoke-static {p1}, Landroidx/core/app/b;->f0(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    const p1, 0x7f0e00bf

    .line 35
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->T(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmr;->d(Ljava/lang/CharSequence;)V

    :cond_4
    return-void

    .line 36
    :cond_5
    :goto_1
    iget-object p1, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const-class p2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {p1, p2}, Landroidx/core/app/b;->t0(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)V

    return-void
.end method

.method public N1(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;ILandroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->mTab:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->h0:Lcom/camerasideas/collagemaker/activity/adapter/e;

    invoke-virtual {p1, p3}, Lcom/camerasideas/collagemaker/activity/adapter/e;->C(I)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->l0:I

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_1

    .line 4
    iget p4, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->l0:I

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->h0:Lcom/camerasideas/collagemaker/activity/adapter/e;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/adapter/e;->z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnn;

    invoke-virtual {v0}, Lnn;->a()I

    move-result v0

    add-int/2addr v0, p4

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->l0:I

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->l0:I

    .line 6
    iget-object p4, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->e0:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->x1()I

    move-result p4

    .line 7
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->e0:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->A1()I

    move-result v0

    const/4 v1, 0x1

    if-ge p2, p4, :cond_2

    .line 8
    iput-boolean v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->k0:Z

    .line 9
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_1

    :cond_2
    if-gt p2, v0, :cond_3

    .line 10
    iput-boolean v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->j0:Z

    .line 11
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    sub-int/2addr p2, p4

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    .line 12
    iget-object p4, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p4, p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_1

    .line 13
    :cond_3
    iput-boolean v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->j0:Z

    .line 14
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 15
    :goto_1
    invoke-virtual {p0, p3}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->P1(I)V

    :goto_2
    return-void
.end method

.method public synthetic O1(ILjava/lang/String;Ljava/lang/Boolean;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->o1()V

    .line 2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->m0:Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent;

    if-eqz p3, :cond_0

    const-string v0, "mEventArgument"

    .line 4
    invoke-virtual {v2, v0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p3, "CutoutStickerItemCount"

    .line 5
    invoke-virtual {v2, p3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const/4 p1, 0x1

    const-string p3, "FromShape"

    .line 6
    invoke-virtual {v2, p3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "CutoutEditMode"

    .line 7
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const-class v1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    const v3, 0x7f080085

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/core/app/b;->s(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;Landroid/os/Bundle;IZZ)Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public P1(I)V
    .locals 2

    if-gez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->mTab:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->g0:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->x1()I

    move-result v0

    sub-int/2addr p1, v0

    if-ltz p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->g0:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->C()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->mTab:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->mTab:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    .line 6
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->mTab:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public Q1()V
    .locals 2

    .line 1
    new-instance v0, Lcom/camerasideas/collagemaker/message/d;

    invoke-direct {v0}, Lcom/camerasideas/collagemaker/message/d;-><init>()V

    .line 2
    invoke-static {}, Lam;->a()Lam;

    move-result-object v1

    invoke-virtual {v1, v0}, Lam;->b(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const-class v1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    invoke-static {v0, v1}, Landroidx/core/app/b;->t0(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)V

    return-void
.end method

.method public R1(Lmn;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->b0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->K()Lmn;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->b0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->w0(Lmn;)V

    :cond_0
    return-void
.end method

.method public S1(Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->m0:Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent;

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
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->o0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->f0:Lcom/camerasideas/collagemaker/activity/adapter/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/activity/adapter/i;->B(Ljava/lang/String;)I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->f0:Lcom/camerasideas/collagemaker/activity/adapter/i;

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

    const v0, 0x7f0b004e

    return v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->o0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->f0:Lcom/camerasideas/collagemaker/activity/adapter/i;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->o0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    if-eqz p1, :cond_1

    const-string v0, "shape_"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->f0:Lcom/camerasideas/collagemaker/activity/adapter/i;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/activity/adapter/i;->B(Ljava/lang/String;)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->f0:Lcom/camerasideas/collagemaker/activity/adapter/i;

    invoke-virtual {v1, v0, p1}, Lcom/camerasideas/collagemaker/activity/adapter/i;->F(ILjava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->n0:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->f0:Lcom/camerasideas/collagemaker/activity/adapter/i;

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/activity/adapter/i;->E(I)V

    .line 8
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->f0:Lcom/camerasideas/collagemaker/activity/adapter/i;

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/activity/adapter/i;->z(I)Lmn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->R1(Lmn;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->f0:Lcom/camerasideas/collagemaker/activity/adapter/i;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->g(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected n1()Lyn;
    .locals 1

    .line 1
    new-instance v0, Lno;

    invoke-direct {v0}, Lno;-><init>()V

    return-object v0
.end method

.method public o0()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->o0()V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->d0:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Luq;->s(Landroid/view/View;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const-string v0, "sclick:button-click"

    .line 1
    invoke-static {v0}, Ljm;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->t1()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->b0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    new-instance p1, Lcom/camerasideas/collagemaker/message/d;

    invoke-direct {p1}, Lcom/camerasideas/collagemaker/message/d;-><init>()V

    .line 4
    invoke-static {}, Lam;->a()Lam;

    move-result-object v0

    invoke-virtual {v0, p1}, Lam;->b(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const-class v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    invoke-static {p1, v0}, Landroidx/core/app/b;->t0(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)V

    goto :goto_0

    .line 6
    :pswitch_1
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->u1()V

    .line 7
    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->k()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->i()I

    move-result p1

    .line 8
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->b0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->E()Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/c0;

    invoke-direct {v1, p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/c0;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;)V

    .line 10
    new-instance v2, Lwe0;

    invoke-direct {v2, v1}, Lwe0;-><init>(Ljava/util/concurrent/Callable;)V

    .line 11
    invoke-static {}, Lnf0;->c()Lxd0;

    move-result-object v1

    invoke-virtual {v2, v1}, Ltd0;->e(Lxd0;)Ltd0;

    move-result-object v1

    .line 12
    invoke-static {}, Lyd0;->a()Lxd0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltd0;->a(Lxd0;)Ltd0;

    move-result-object v1

    new-instance v2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/b0;

    invoke-direct {v2, p0, p1, v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/b0;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;ILjava/lang/String;)V

    .line 13
    sget-object p1, Loe0;->d:Lje0;

    sget-object v0, Loe0;->b:Lie0;

    invoke-static {}, Loe0;->a()Lje0;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v0, v3}, Ltd0;->b(Lje0;Lje0;Lie0;Lje0;)Lbe0;

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0800bf
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public q(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->o0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->f0:Lcom/camerasideas/collagemaker/activity/adapter/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/activity/adapter/i;->B(Ljava/lang/String;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->f0:Lcom/camerasideas/collagemaker/activity/adapter/i;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$g;->h(ILjava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->o0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected q1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
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
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->h0:Lcom/camerasideas/collagemaker/activity/adapter/e;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->f0:Lcom/camerasideas/collagemaker/activity/adapter/i;

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Ltm;->U:Landroid/content/Context;

    invoke-static {p1}, Lln;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->h0:Lcom/camerasideas/collagemaker/activity/adapter/e;

    invoke-virtual {p2, p1}, Lcom/camerasideas/collagemaker/activity/adapter/e;->B(Ljava/util/List;)V

    .line 5
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->f0:Lcom/camerasideas/collagemaker/activity/adapter/i;

    invoke-static {p1}, Lln;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/camerasideas/collagemaker/activity/adapter/i;->D(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public u(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->o0:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->f0:Lcom/camerasideas/collagemaker/activity/adapter/i;

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2, p1}, Lcom/camerasideas/collagemaker/activity/adapter/i;->B(Ljava/lang/String;)I

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->f0:Lcom/camerasideas/collagemaker/activity/adapter/i;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->g(I)V

    :cond_0
    return-void
.end method
