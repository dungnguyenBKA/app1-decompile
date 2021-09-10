.class public Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;
.super Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;
.source "SourceFile"

# interfaces
.implements Lcom/camerasideas/collagemaker/activity/adapter/p$b;
.implements Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment$b;
.implements Lyp$e;
.implements Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g$a;
.implements Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g$b;
.implements Landroid/view/View$OnClickListener;
.implements Lyp$f;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/camerasideas/collagemaker/network/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0<",
        "Ljava/lang/Object;",
        "Lno;",
        ">;",
        "Ljava/lang/Object;",
        "Lcom/camerasideas/collagemaker/activity/adapter/p$b;",
        "Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment$b;",
        "Lyp$e;",
        "Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g$a;",
        "Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g$b;",
        "Landroid/view/View$OnClickListener;",
        "Lyp$f;",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
        "Lcom/camerasideas/collagemaker/network/a;"
    }
.end annotation


# static fields
.field public static final synthetic L0:I


# instance fields
.field private A0:Lcom/camerasideas/collagemaker/filter/ISCropFilter;

.field private B0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin;",
            ">;"
        }
    .end annotation
.end field

.field private C0:I

.field private D0:I

.field private E0:Z

.field private F0:Ljava/lang/String;

.field private G0:Z

.field private H0:Z

.field private I0:Ldm$d;

.field private J0:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$d;

.field private K0:Ljava/lang/Runnable;

.field private e0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private f0:Landroid/view/View;

.field private g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

.field private h0:Landroid/view/View;

.field private i0:Landroidx/appcompat/widget/AppCompatImageView;

.field private j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

.field private k0:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private l0:Lcom/camerasideas/collagemaker/activity/adapter/p;

.field private m0:Landroidx/recyclerview/widget/LinearLayoutManager;

.field mBackgroundLayout:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBtnBackground:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBtnBackgroundCancel:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBtnCanvas:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBtnCanvasCancel:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBtnText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mCanvasLayout:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mCloudBgLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mMenuLayout:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mRatioRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mScrollView:Landroidx/core/widget/NestedScrollView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextTagNew:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private n0:I

.field private o0:Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent;

.field private p0:Ljava/lang/String;

.field private q0:Landroid/net/Uri;

.field private r0:I

.field private s0:I

.field private t0:I

.field private u0:Ljava/lang/String;

.field private v0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private w0:Z

.field private x0:F

.field private y0:Ljava/lang/String;

.field private z0:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->e0:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->s0:I

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->v0:Ljava/util/List;

    .line 5
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->w0:Z

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->B0:Ljava/util/List;

    .line 7
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->C0:I

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->D0:I

    .line 9
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$a;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$a;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->I0:Ldm$d;

    .line 10
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$b;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$b;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->J0:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$d;

    .line 11
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$c;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$c;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->K0:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic A1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->C0:I

    return p0
.end method

.method static synthetic B1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->C0:I

    return p1
.end method

.method static synthetic C1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->D0:I

    return p0
.end method

.method static synthetic D1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->D0:I

    return p1
.end method

.method static synthetic E1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Ltm;->U:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic F1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->u0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic G1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->u0:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic H1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->v0:Ljava/util/List;

    return-object p0
.end method

.method static synthetic I1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;Ljava/lang/String;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->W1(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic J1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->n0:I

    return p0
.end method

.method static synthetic K1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Ltm;->U:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic L1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->h2(IZ)V

    return-void
.end method

.method static synthetic M1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->k0:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic N1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    return-object p0
.end method

.method static synthetic O1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Ltm;->U:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic P1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Ltm;->U:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic Q1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->s0:I

    return p1
.end method

.method static synthetic R1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->p0:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic S1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->q0:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic T1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;Lcom/camerasideas/collagemaker/filter/ISCropFilter;)Lcom/camerasideas/collagemaker/filter/ISCropFilter;
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->A0:Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    return-object p1
.end method

.method static synthetic U1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r0:I

    return p1
.end method

.method static synthetic V1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r2(Ljava/lang/String;)V

    return-void
.end method

.method private W1(Ljava/lang/String;IZ)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const-class v2, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ORG_FILE_PATH"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->x0:F

    const-string v1, "CROP_RATIO"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 4
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->F()F

    move-result p1

    const-string v1, "CROP_ORIGINAL_RATIO"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 5
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->y0:Ljava/lang/String;

    const-string v1, "CROP_RATIO_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "CROP_ENCRYPTED"

    .line 6
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0, v0, p2}, Landroidx/fragment/app/Fragment;->k1(Landroid/content/Intent;I)V

    return-void
.end method

.method private Z1()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->B0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lyp;->F()Lyp;

    move-result-object v1

    invoke-virtual {v1}, Lyp;->G()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_8

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgq;

    .line 6
    iget-object v4, p0, Ltm;->U:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lfq;->b(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v4, Ljn;

    invoke-direct {v4}, Ljn;-><init>()V

    .line 8
    iget v5, v3, Lfq;->b:I

    invoke-virtual {v4, v5}, Ljn;->j(I)V

    .line 9
    iget-object v5, v3, Lfq;->i:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljn;->m(Ljava/lang/String;)V

    .line 10
    iget-object v5, v3, Lfq;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljn;->o(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v4, v3}, Ljn;->q(Lgq;)V

    .line 12
    iget-object v5, v3, Lfq;->h:Ljava/lang/String;

    invoke-static {v5}, Ldq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 13
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    sget-object v5, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/l;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/l;

    invoke-virtual {v6, v5}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 15
    array-length v6, v5

    if-lez v6, :cond_5

    .line 16
    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_5

    aget-object v8, v5, v7

    .line 17
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 18
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "a"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "bg"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_2

    .line 19
    :cond_2
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "b"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 20
    invoke-virtual {v4, v9}, Ljn;->n(Ljava/lang/String;)V

    goto :goto_3

    .line 21
    :cond_3
    :goto_2
    invoke-virtual {v4, v9}, Ljn;->k(Ljava/lang/String;)V

    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 22
    :cond_5
    invoke-virtual {v3}, Lgq;->g()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 23
    invoke-virtual {v3}, Lgq;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 24
    invoke-virtual {v3}, Lgq;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v5, Lin;

    invoke-direct {v5}, Lin;-><init>()V

    .line 26
    invoke-virtual {v3}, Lgq;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lin;->c(Ljava/lang/String;)V

    .line 27
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v3}, Lin;->d(Ljava/util/List;)V

    .line 28
    invoke-virtual {v5}, Lin;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->B0:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 30
    :cond_6
    iget-object v5, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->B0:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lin;

    .line 31
    invoke-virtual {v3}, Lgq;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lin;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 32
    invoke-virtual {v6}, Lin;->b()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 33
    :cond_8
    invoke-static {}, Lyp;->F()Lyp;

    move-result-object v0

    invoke-virtual {v0}, Lyp;->K()V

    .line 34
    :cond_9
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->B0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 35
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mCloudBgLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 36
    :goto_5
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->B0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 37
    iget-object v1, p0, Ltm;->U:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0b006b

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v3, 0x7f0800d5

    .line 38
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f080177

    .line 39
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 40
    iget-object v5, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->B0:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lin;

    .line 41
    invoke-virtual {v5}, Lin;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    .line 43
    new-instance v6, Lcom/camerasideas/collagemaker/activity/adapter/f;

    iget-object v7, p0, Ltm;->U:Landroid/content/Context;

    invoke-direct {v6, v7, v5}, Lcom/camerasideas/collagemaker/activity/adapter/f;-><init>(Landroid/content/Context;Lin;)V

    .line 44
    iget-object v5, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->p0:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/camerasideas/collagemaker/activity/adapter/f;->z(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 46
    invoke-virtual {v4}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 47
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 48
    invoke-virtual {v4, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 49
    invoke-static {v4}, Ldm;->d(Landroidx/recyclerview/widget/RecyclerView;)Ldm;

    move-result-object v3

    new-instance v4, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/b;

    invoke-direct {v4, p0, v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/b;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;I)V

    invoke-virtual {v3, v4}, Ldm;->e(Ldm$d;)Ldm;

    .line 50
    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mCloudBgLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_a
    return-void
.end method

.method private h2(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mCloudBgLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mCloudBgLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const v1, 0x7f080177

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v1

    instance-of v1, v1, Lcom/camerasideas/collagemaker/activity/adapter/f;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v1

    check-cast v1, Lcom/camerasideas/collagemaker/activity/adapter/f;

    .line 6
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->p0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/camerasideas/collagemaker/activity/adapter/f;->z(Ljava/lang/String;)V

    .line 7
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->C0:I

    if-ne p1, v1, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p1

    instance-of p1, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->t1()I

    move-result p2

    .line 10
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->y1()I

    move-result v0

    .line 11
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->D0:I

    if-le v1, p2, :cond_0

    if-lt v1, v0, :cond_1

    .line 12
    :cond_0
    iget-object p2, p0, Ltm;->U:Landroid/content/Context;

    invoke-static {p2}, Lc2;->h(Landroid/content/Context;)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, v1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->R1(II)V

    :cond_1
    return-void
.end method

.method private k2(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_7

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq p1, v5, :cond_6

    const/4 v6, 0x3

    if-eq p1, v4, :cond_5

    if-eq p1, v6, :cond_4

    const/4 v4, 0x4

    if-eq p1, v4, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    goto/16 :goto_0

    .line 2
    :cond_1
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->z()I

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r0:I

    .line 3
    invoke-virtual {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->p2(I)V

    .line 4
    iput-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->p0:Ljava/lang/String;

    .line 5
    iput-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->q0:Landroid/net/Uri;

    .line 6
    iput-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->A0:Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    .line 7
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->z()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/activity/adapter/h;->A(I)I

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->t0:I

    .line 8
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/activity/adapter/h;->C(I)V

    .line 9
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

    sget v0, Lcom/camerasideas/collagemaker/activity/adapter/h;->m:I

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/activity/adapter/h;->B(I)V

    .line 10
    invoke-direct {p0, v1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r2(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 11
    :cond_2
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->J()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->p0:Ljava/lang/String;

    .line 12
    iput-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->q0:Landroid/net/Uri;

    .line 13
    iput v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r0:I

    .line 14
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->A()Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->A0:Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    .line 15
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

    sget v0, Lcom/camerasideas/collagemaker/activity/adapter/h;->m:I

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/activity/adapter/h;->B(I)V

    .line 16
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->p0:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r2(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->t0:I

    .line 18
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/activity/adapter/h;->C(I)V

    .line 19
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->p0:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->X1(Ljava/lang/String;)Ljn;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 20
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->A0:Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    invoke-virtual {p1, v0}, Ljn;->l(Lcom/camerasideas/collagemaker/filter/ISCropFilter;)V

    .line 21
    invoke-virtual {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->m2(Ljn;)V

    .line 22
    :cond_3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mCloudBgLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->K0:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 23
    :cond_4
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->z()I

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r0:I

    .line 24
    invoke-virtual {p0, p1, v2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->o2(IZ)V

    .line 25
    iput-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->p0:Ljava/lang/String;

    .line 26
    iput-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->q0:Landroid/net/Uri;

    .line 27
    iput-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->A0:Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    .line 28
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->z()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/activity/adapter/h;->A(I)I

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->t0:I

    .line 29
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/activity/adapter/h;->C(I)V

    .line 30
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

    sget v0, Lcom/camerasideas/collagemaker/activity/adapter/h;->m:I

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/activity/adapter/h;->B(I)V

    .line 31
    invoke-direct {p0, v1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r2(Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_5
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->z()I

    move-result p1

    invoke-virtual {p0, p1, v5}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->o2(IZ)V

    .line 33
    iput v6, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->t0:I

    .line 34
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->z()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/activity/adapter/h;->B(I)V

    .line 35
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->z()I

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r0:I

    .line 36
    iput-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->p0:Ljava/lang/String;

    .line 37
    iput-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->q0:Landroid/net/Uri;

    .line 38
    iput-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->A0:Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    .line 39
    invoke-direct {p0, v1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r2(Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_6
    iput v4, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->t0:I

    .line 41
    iput-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->p0:Ljava/lang/String;

    .line 42
    iput v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r0:I

    .line 43
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->B()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->q0:Landroid/net/Uri;

    .line 44
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->A()Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->A0:Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    .line 45
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

    invoke-virtual {p1, v4}, Lcom/camerasideas/collagemaker/activity/adapter/h;->C(I)V

    .line 46
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

    sget v0, Lcom/camerasideas/collagemaker/activity/adapter/h;->m:I

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/activity/adapter/h;->B(I)V

    .line 47
    invoke-direct {p0, v1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r2(Ljava/lang/String;)V

    .line 48
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->B()Landroid/net/Uri;

    move-result-object p1

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->A0:Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    invoke-virtual {p0, p1, v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->n2(Landroid/net/Uri;Lcom/camerasideas/collagemaker/filter/ISCropFilter;)V

    .line 49
    iput v5, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->s0:I

    goto :goto_0

    .line 50
    :cond_7
    invoke-virtual {p0, v3, v3}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->n2(Landroid/net/Uri;Lcom/camerasideas/collagemaker/filter/ISCropFilter;)V

    .line 51
    iput-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->p0:Ljava/lang/String;

    .line 52
    iput-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->q0:Landroid/net/Uri;

    .line 53
    iput-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->A0:Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    .line 54
    iput v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r0:I

    .line 55
    iput v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->t0:I

    .line 56
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

    invoke-virtual {p1, v2}, Lcom/camerasideas/collagemaker/activity/adapter/h;->C(I)V

    .line 57
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

    sget v0, Lcom/camerasideas/collagemaker/activity/adapter/h;->m:I

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/activity/adapter/h;->B(I)V

    .line 58
    invoke-direct {p0, v1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r2(Ljava/lang/String;)V

    :cond_8
    :goto_0
    return-void
.end method

.method private r2(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->B0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 3
    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->B0:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lin;

    const/4 v4, 0x0

    .line 4
    :goto_1
    invoke-virtual {v3}, Lin;->b()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 5
    invoke-virtual {v3}, Lin;->b()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljn;

    invoke-virtual {v5}, Ljn;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6
    iget p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->C0:I

    invoke-direct {p0, p1, v2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->h2(IZ)V

    .line 7
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->C0:I

    .line 8
    iput v4, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->D0:I

    .line 9
    invoke-direct {p0, v0, v1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->h2(IZ)V

    return-void

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_2
    iget p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->C0:I

    invoke-direct {p0, p1, v2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->h2(IZ)V

    .line 11
    iput v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->C0:I

    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->D0:I

    .line 13
    invoke-direct {p0, v2, v1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->h2(IZ)V

    :cond_3
    return-void
.end method

.method private s2(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->e0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-static {v1, v2}, Luq;->t(Landroid/view/View;Z)V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mMenuLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 4
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mMenuLayout:Landroid/view/View;

    invoke-static {v1, v4}, Luq;->t(Landroid/view/View;Z)V

    .line 5
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->f0:Landroid/view/View;

    invoke-static {v1, v4}, Luq;->t(Landroid/view/View;Z)V

    .line 6
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->h0:Landroid/view/View;

    invoke-static {v1, v4}, Luq;->t(Landroid/view/View;Z)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mMenuLayout:Landroid/view/View;

    invoke-static {v1, v5}, Luq;->t(Landroid/view/View;Z)V

    .line 8
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->f0:Landroid/view/View;

    invoke-static {v1, v5}, Luq;->t(Landroid/view/View;Z)V

    .line 9
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->h0:Landroid/view/View;

    invoke-static {v1, v5}, Luq;->t(Landroid/view/View;Z)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mBackgroundLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 11
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mCloudBgLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->K0:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    if-eqz p1, :cond_4

    .line 13
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/i;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/i;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method static synthetic x1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->t0:I

    return p0
.end method

.method static synthetic y1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->t0:I

    return p1
.end method

.method static synthetic z1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)Lcom/camerasideas/collagemaker/activity/adapter/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

    return-object p0
.end method


# virtual methods
.method public D0(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->D0(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->w0:Z

    .line 3
    iget-object p1, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const-class p2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {p1, p2}, Landroidx/core/app/b;->t0(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)V

    return-void

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mBtnCanvas:Landroid/widget/TextView;

    invoke-static {p2}, Luq;->v(Landroid/widget/TextView;)V

    .line 5
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mBtnBackground:Landroid/widget/TextView;

    invoke-static {p2}, Luq;->v(Landroid/widget/TextView;)V

    .line 6
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mBtnText:Landroid/widget/TextView;

    invoke-static {p2}, Luq;->v(Landroid/widget/TextView;)V

    .line 7
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mTextTagNew:Landroid/view/View;

    iget-object v0, p0, Ltm;->U:Landroid/content/Context;

    .line 8
    invoke-static {v0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "EnableShowTextTagNew"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 9
    invoke-static {p2, v0}, Luq;->t(Landroid/view/View;Z)V

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->O()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06024f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget-object p2, p0, Ltm;->U:Landroid/content/Context;

    const/high16 v0, 0x42e60000    # 115.0f

    invoke-static {p2, v0}, Lc2;->d(Landroid/content/Context;F)I

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->O()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060224

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 12
    iget-object p2, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const v0, 0x7f0800f6

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->f0:Landroid/view/View;

    .line 13
    iget-object p2, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const v0, 0x7f080166

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    .line 14
    iget-object p2, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const v0, 0x7f08018b

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->h0:Landroid/view/View;

    .line 15
    iget-object p2, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const v0, 0x7f0800a5

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->i0:Landroidx/appcompat/widget/AppCompatImageView;

    .line 16
    iget-object p2, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const v0, 0x7f0800a2

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatImageView;

    .line 17
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->i0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->e0:Ljava/util/List;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mMenuLayout:Landroid/view/View;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->e0:Ljava/util/List;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mCanvasLayout:Landroid/view/View;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->e0:Ljava/util/List;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mBackgroundLayout:Landroid/view/View;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->d0:Landroid/view/View;

    invoke-static {p2, v2}, Luq;->t(Landroid/view/View;Z)V

    .line 23
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->f0:Landroid/view/View;

    invoke-static {p2, p1}, Luq;->t(Landroid/view/View;Z)V

    .line 24
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mMenuLayout:Landroid/view/View;

    invoke-direct {p0, p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->s2(Landroid/view/View;)V

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "mEventArgument"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent;

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->o0:Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent;

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "CutoutEditMode"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->F0:Ljava/lang/String;

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "FromShape"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->G0:Z

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "CutoutStickerItemCount"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    if-le p2, p1, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p2, :cond_2

    .line 30
    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->k()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->j()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 31
    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v3, v1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->t(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->w1()V

    .line 33
    :cond_3
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->N()Z

    move-result p2

    iput-boolean p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->H0:Z

    .line 34
    new-instance p2, Lcom/camerasideas/collagemaker/activity/adapter/h;

    iget-object v0, p0, Ltm;->U:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->H0:Z

    invoke-direct {p2, v0, v1}, Lcom/camerasideas/collagemaker/activity/adapter/h;-><init>(Landroid/content/Context;Z)V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

    .line 35
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 36
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/camerasideas/collagemaker/activity/adapter/k;

    iget-object v1, p0, Ltm;->U:Landroid/content/Context;

    const/high16 v3, 0x40f00000    # 7.5f

    invoke-static {v1, v3}, Lc2;->b(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, v1, p1}, Lcom/camerasideas/collagemaker/activity/adapter/k;-><init>(IZ)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 37
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p2, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->k0:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 38
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 39
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p2}, Ldm;->d(Landroidx/recyclerview/widget/RecyclerView;)Ldm;

    move-result-object p2

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->I0:Ldm$d;

    invoke-virtual {p2, v0}, Ldm;->e(Ldm$d;)Ldm;

    .line 40
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->Z1()V

    .line 41
    iget-object p2, p0, Ltm;->U:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060238

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iget-object v0, p0, Ltm;->U:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06025a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->n0:I

    .line 42
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    .line 43
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v0, Lcom/camerasideas/collagemaker/photoproc/editorview/b;

    invoke-direct {v0, p2}, Lcom/camerasideas/collagemaker/photoproc/editorview/b;-><init>(Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;)V

    invoke-static {v0}, Lml;->h(Ljava/lang/Runnable;)V

    .line 45
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->C()F

    move-result p2

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->F()F

    move-result v0

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_6

    .line 46
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->C()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->o0:Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent;

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v3, 0x1

    :goto_2
    invoke-virtual {p2, v0, v1, p1, v3}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->s(FFZZ)V

    .line 47
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->C()F

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->x0:F

    goto :goto_3

    .line 48
    :cond_6
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->F()F

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->x0:F

    .line 49
    :goto_3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->I()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->y0:Ljava/lang/String;

    .line 50
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

    if-eqz p1, :cond_7

    .line 51
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->o0:Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent;

    if-eqz p1, :cond_7

    .line 52
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent;->a()I

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->s0:I

    .line 53
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->z0:I

    .line 54
    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->k2(I)V

    .line 55
    :cond_7
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->m0:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 56
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mRatioRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 57
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mRatioRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/camerasideas/collagemaker/activity/adapter/k;

    iget-object v0, p0, Ltm;->U:Landroid/content/Context;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v0, v1}, Lc2;->b(Landroid/content/Context;F)I

    move-result v0

    invoke-direct {p2, v0}, Lcom/camerasideas/collagemaker/activity/adapter/k;-><init>(I)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 58
    new-instance p1, Lcom/camerasideas/collagemaker/activity/adapter/p;

    iget-object p2, p0, Ltm;->U:Landroid/content/Context;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->y0:Ljava/lang/String;

    invoke-direct {p1, p2, v0, v2}, Lcom/camerasideas/collagemaker/activity/adapter/p;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->l0:Lcom/camerasideas/collagemaker/activity/adapter/p;

    .line 59
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mRatioRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 60
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->l0:Lcom/camerasideas/collagemaker/activity/adapter/p;

    invoke-virtual {p1, p0}, Lcom/camerasideas/collagemaker/activity/adapter/p;->C(Lcom/camerasideas/collagemaker/activity/adapter/p$b;)V

    .line 61
    invoke-static {}, Lyp;->F()Lyp;

    move-result-object p1

    invoke-virtual {p1, p0}, Lyp;->x(Lyp$e;)V

    .line 62
    invoke-static {}, Lyp;->F()Lyp;

    move-result-object p1

    invoke-virtual {p1, p0}, Lyp;->y(Lyp$f;)V

    .line 63
    invoke-static {p0}, Landroidx/core/app/b;->r0(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 64
    invoke-static {}, Lcom/camerasideas/collagemaker/network/b;->a()Lcom/camerasideas/collagemaker/network/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/camerasideas/collagemaker/network/b;->c(Lcom/camerasideas/collagemaker/network/a;)V

    .line 65
    iget-object p1, p0, Ltm;->U:Landroid/content/Context;

    invoke-static {p1}, Landroidx/core/app/b;->f0(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_8

    const p1, 0x7f0e00bf

    .line 66
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->T(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmr;->d(Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method

.method public X1(Ljava/lang/String;)Ljn;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->B0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lin;

    const/4 v3, 0x0

    .line 2
    :goto_1
    invoke-virtual {v2}, Lin;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 3
    invoke-virtual {v2}, Lin;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljn;

    invoke-virtual {v4}, Ljn;->f()Lgq;

    move-result-object v4

    iget-object v4, v4, Lfq;->j:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4
    invoke-virtual {v2}, Lin;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn;

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public Y1(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->B0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->B0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lin;

    .line 3
    invoke-virtual {v1}, Lin;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljn;

    .line 4
    invoke-virtual {v2}, Ljn;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public a2(ILandroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;ILandroid/view/View;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->J0:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$d;

    if-eqz p2, :cond_8

    .line 2
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->B0:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lin;

    check-cast p2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$b;

    .line 3
    invoke-static {}, Luq;->f()Z

    move-result p5

    if-eqz p5, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 p5, -0x1

    if-eq p1, p5, :cond_8

    if-ne p4, p5, :cond_1

    goto/16 :goto_0

    .line 4
    :cond_1
    invoke-virtual {p3}, Lin;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p4, v0, :cond_2

    goto/16 :goto_0

    .line 5
    :cond_2
    invoke-virtual {p3}, Lin;->b()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljn;

    .line 6
    invoke-virtual {p3}, Ljn;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$b;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->E1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/b;->d0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    iget-object p1, p2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$b;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    const-string p2, "ProBG"

    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->v1(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8
    :cond_3
    iget-object v0, p2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$b;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->N1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 9
    iget-object v0, p2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$b;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->N1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->w()V

    .line 10
    iget-object v0, p2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$b;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->N1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 11
    :cond_4
    iget-object v0, p2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$b;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->z1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)Lcom/camerasideas/collagemaker/activity/adapter/h;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 12
    iget-object v0, p2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$b;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->z1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)Lcom/camerasideas/collagemaker/activity/adapter/h;

    move-result-object v0

    sget v1, Lcom/camerasideas/collagemaker/activity/adapter/h;->m:I

    invoke-virtual {v0, v1}, Lcom/camerasideas/collagemaker/activity/adapter/h;->B(I)V

    .line 13
    :cond_5
    invoke-virtual {p3}, Ljn;->f()Lgq;

    move-result-object v0

    invoke-static {v0}, Lyp;->S(Lfq;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 14
    iget-object p1, p2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$b;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-virtual {p3}, Ljn;->e()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->G1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    iget-object p1, p2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$b;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->H1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$b;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->F1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-static {}, Lyp;->F()Lyp;

    move-result-object p1

    invoke-virtual {p3}, Ljn;->f()Lgq;

    move-result-object p2

    .line 17
    invoke-virtual {p1, p2}, Lyp;->z(Lfq;)V

    goto :goto_0

    .line 18
    :cond_6
    invoke-virtual {p3}, Ljn;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbm;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 19
    invoke-virtual {p3}, Ljn;->i()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p3}, Ljn;->f()Lgq;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p3}, Ljn;->f()Lgq;

    move-result-object v0

    invoke-virtual {v0}, Lgq;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 20
    iget-object p1, p2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$b;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-virtual {p3}, Ljn;->a()Ljava/lang/String;

    move-result-object p2

    const/16 p4, 0xf

    invoke-virtual {p3}, Ljn;->g()Z

    move-result p3

    invoke-static {p1, p2, p4, p3}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->I1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 21
    :cond_7
    iget-object v0, p2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$b;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->Q1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;I)I

    .line 22
    iget-object v0, p2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$b;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-virtual {p3}, Ljn;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->R1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    iget-object v0, p2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$b;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->U1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;I)I

    .line 24
    iget-object v0, p2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$b;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->T1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;Lcom/camerasideas/collagemaker/filter/ISCropFilter;)Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    .line 25
    iget-object v0, p2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$b;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {v0, v1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->S1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;Landroid/net/Uri;)Landroid/net/Uri;

    .line 26
    iget-object v0, p2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$b;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-virtual {v0, p1, p4}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->q2(II)V

    .line 27
    iget-object p1, p2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$b;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {p1, p5}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->y1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;I)I

    .line 28
    iget-object p1, p2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$b;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->z1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)Lcom/camerasideas/collagemaker/activity/adapter/h;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/camerasideas/collagemaker/activity/adapter/h;->C(I)V

    .line 29
    iget-object p1, p2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment$b;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-virtual {p1, p3}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->m2(Ljn;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public b2()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    iget v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->x0:F

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 2
    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->s(FFZZ)V

    return-void
.end method

.method public c2()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    iget v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->x0:F

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 2
    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->s(FFZZ)V

    return-void
.end method

.method public d2()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    iget v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->x0:F

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 2
    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->s(FFZZ)V

    return-void
.end method

.method public e(FF)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    const v1, 0x7f0e0051

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->T(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->u0(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, p1, p2, v2, v2}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->s(FFZZ)V

    .line 4
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->l0:Lcom/camerasideas/collagemaker/activity/adapter/p;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->T(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/adapter/p;->D(Ljava/lang/String;)V

    return-void
.end method

.method public e0(IILandroid/content/Intent;)V
    .locals 6

    const/16 p2, 0xe

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-ne p1, v3, :cond_4

    if-eqz p3, :cond_4

    const-string p1, "TesterLog-Background"

    const-string v3, "\u9009\u56fe\u505a\u81ea\u5b9a\u4e49\u80cc\u666f"

    .line 1
    invoke-static {p1, v3}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

    if-eqz p3, :cond_1

    .line 4
    :try_start_0
    iget-object p3, p0, Ltm;->U:Landroid/content/Context;

    const-string v3, "photoeditor.cutout.backgrounderaser"

    invoke-virtual {p3, v3, p1, v1}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 5
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    invoke-static {p1}, Lcm;->c(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 7
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->q0:Landroid/net/Uri;

    .line 8
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/activity/adapter/h;->z(I)Lhn;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->q0:Landroid/net/Uri;

    invoke-virtual {p1, p3}, Lhn;->h(Landroid/net/Uri;)V

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->q0:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, v2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->W1(Ljava/lang/String;IZ)V

    return-void

    :cond_1
    const p1, 0x7f0e00cf

    .line 11
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->T(I)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p1}, Lmr;->d(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    if-nez p1, :cond_3

    .line 14
    :cond_2
    iget-object p1, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const-class p2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {p1, p2}, Landroidx/core/app/b;->t0(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)V

    :cond_3
    return-void

    :cond_4
    const/high16 v3, 0x3f800000    # 1.0f

    const-string v4, "CROP_RATIO_NAME"

    const-string v5, "CROP_FILTER"

    if-ne p1, p2, :cond_8

    if-eqz p3, :cond_8

    .line 15
    invoke-virtual {p3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    .line 16
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    if-eqz p2, :cond_5

    if-eqz p1, :cond_5

    .line 17
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->q()F

    move-result p2

    iput p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->x0:F

    .line 18
    iget-object v5, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v5, p2, v3, v1, v2}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->s(FFZZ)V

    .line 19
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

    invoke-virtual {p2, v0}, Lcom/camerasideas/collagemaker/activity/adapter/h;->z(I)Lhn;

    move-result-object p2

    .line 20
    invoke-virtual {p2, p1}, Lhn;->i(Lcom/camerasideas/collagemaker/filter/ISCropFilter;)V

    .line 21
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->t0:I

    const/4 v3, 0x0

    .line 22
    iput-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->p0:Ljava/lang/String;

    .line 23
    iput v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r0:I

    .line 24
    invoke-virtual {p2}, Lhn;->a()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->q0:Landroid/net/Uri;

    .line 25
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->A0:Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    .line 26
    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

    sget v5, Lcom/camerasideas/collagemaker/activity/adapter/h;->m:I

    invoke-virtual {v3, v5}, Lcom/camerasideas/collagemaker/activity/adapter/h;->B(I)V

    .line 27
    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

    invoke-virtual {v3, v0}, Lcom/camerasideas/collagemaker/activity/adapter/h;->C(I)V

    const-string v0, ""

    .line 28
    invoke-direct {p0, v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r2(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p2}, Lhn;->a()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->n2(Landroid/net/Uri;Lcom/camerasideas/collagemaker/filter/ISCropFilter;)V

    .line 30
    iput v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->s0:I

    .line 31
    iput v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->C0:I

    const/4 p1, -0x1

    .line 32
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->D0:I

    .line 33
    :cond_5
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    if-eqz p2, :cond_6

    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->l0:Lcom/camerasideas/collagemaker/activity/adapter/p;

    if-eqz p3, :cond_6

    .line 35
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->y0:Ljava/lang/String;

    .line 36
    invoke-virtual {p2, p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->u0(Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->l0:Lcom/camerasideas/collagemaker/activity/adapter/p;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->y0:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/adapter/p;->D(Ljava/lang/String;)V

    .line 38
    :cond_6
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    if-nez p1, :cond_7

    .line 39
    iget-object p1, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const-class p2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {p1, p2}, Landroidx/core/app/b;->t0(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)V

    :cond_7
    return-void

    :cond_8
    const/16 p2, 0xf

    if-ne p1, p2, :cond_b

    if-eqz p3, :cond_b

    .line 40
    invoke-virtual {p3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    .line 41
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    if-eqz p2, :cond_9

    if-eqz p1, :cond_9

    .line 42
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->q()F

    move-result p2

    iput p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->x0:F

    .line 43
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v0, p2, v3, v1, v2}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->s(FFZZ)V

    .line 44
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->A0:Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    .line 45
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->p0:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->X1(Ljava/lang/String;)Ljn;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 46
    invoke-virtual {p2, p1}, Ljn;->l(Lcom/camerasideas/collagemaker/filter/ISCropFilter;)V

    .line 47
    invoke-virtual {p0, p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->m2(Ljn;)V

    .line 48
    :cond_9
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    if-eqz p2, :cond_a

    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->l0:Lcom/camerasideas/collagemaker/activity/adapter/p;

    if-eqz p3, :cond_a

    .line 50
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->y0:Ljava/lang/String;

    .line 51
    invoke-virtual {p2, p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->u0(Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->l0:Lcom/camerasideas/collagemaker/activity/adapter/p;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->y0:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/adapter/p;->D(Ljava/lang/String;)V

    .line 53
    :cond_a
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    if-nez p1, :cond_b

    .line 54
    iget-object p1, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const-class p2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {p1, p2}, Landroidx/core/app/b;->t0(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)V

    :cond_b
    return-void
.end method

.method public e2()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    iget v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->x0:F

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 2
    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->s(FFZZ)V

    return-void
.end method

.method public f(Ljava/lang/String;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->u0(Ljava/lang/String;)V

    const/4 p1, -0x1

    if-nez p2, :cond_0

    if-ne p3, p1, :cond_0

    .line 2
    iget-object p1, p0, Ltm;->U:Landroid/content/Context;

    const-class p2, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;

    const/4 p3, 0x0

    .line 3
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Landroidx/fragment/app/Fragment;->Y(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lsm;

    .line 4
    check-cast p1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;

    .line 5
    iget-object p2, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/g;

    move-result-object p2

    invoke-virtual {p1, p2}, Lsm;->x1(Landroidx/fragment/app/g;)V

    .line 6
    invoke-virtual {p1, p0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->B1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment$b;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, p1, :cond_1

    if-nez p3, :cond_1

    .line 7
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    iget-object p2, p0, Ltm;->U:Landroid/content/Context;

    invoke-static {p2}, Landroidx/core/app/b;->V(Landroid/content/Context;)I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Ltm;->U:Landroid/content/Context;

    invoke-static {p3}, Landroidx/core/app/b;->U(Landroid/content/Context;)I

    move-result p3

    iget-object v1, p0, Ltm;->U:Landroid/content/Context;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/appdata/f;->c(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v1, p3

    iget-object p3, p0, Ltm;->U:Landroid/content/Context;

    invoke-static {p3}, Lyl;->a(Landroid/content/Context;)I

    move-result p3

    add-int/2addr p3, v1

    int-to-float p3, p3

    .line 8
    invoke-virtual {p1, p2, p3, v0, v0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->s(FFZZ)V

    goto :goto_0

    :cond_1
    if-ne p2, p1, :cond_2

    if-ne p3, p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    const/4 p2, 0x0

    .line 10
    invoke-virtual {p1, p2, p2, v0, v0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->s(FFZZ)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    int-to-float p2, p2

    int-to-float p3, p3

    .line 12
    invoke-virtual {p1, p2, p3, v0, v0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->s(FFZZ)V

    :goto_0
    return-void
.end method

.method public synthetic f2(Landroid/net/Uri;Lcom/camerasideas/collagemaker/filter/ISCropFilter;Lud0;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Ltm;->U:Landroid/content/Context;

    const-string v1, "photoeditor.cutout.backgrounderaser"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3
    invoke-static {p1}, Lcm;->c(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v0, p1, p2}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->j0(Landroid/net/Uri;Lcom/camerasideas/collagemaker/filter/ISCropFilter;)Z

    move-result p1

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p3, p1}, Lud0;->c(Ljava/lang/Object;)V

    .line 6
    invoke-interface {p3}, Lud0;->a()V

    return-void
.end method

.method public synthetic g2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->w()V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

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

.method public i2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mCanvasLayout:Landroid/view/View;

    invoke-static {v0}, Luq;->g(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mBtnCanvasCancel:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->onClick(Landroid/view/View;)V

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mBackgroundLayout:Landroid/view/View;

    invoke-static {v0}, Luq;->g(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mBtnBackgroundCancel:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->onClick(Landroid/view/View;)V

    goto :goto_1

    .line 5
    :cond_1
    new-instance v0, Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent;

    invoke-direct {v0}, Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent;-><init>()V

    .line 6
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->s0:I

    invoke-virtual {v0, v1}, Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent;->c(I)V

    .line 7
    iget-boolean v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->G0:Z

    invoke-virtual {v0, v1}, Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent;->d(Z)V

    .line 8
    invoke-static {}, Lam;->a()Lam;

    move-result-object v1

    invoke-virtual {v1, v0}, Lam;->b(Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->d0:Landroid/view/View;

    iget-boolean v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->G0:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Luq;->s(Landroid/view/View;I)V

    .line 10
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->f0:Landroid/view/View;

    invoke-static {v0, v2}, Luq;->t(Landroid/view/View;Z)V

    .line 11
    iget-object v0, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const-class v1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {v0, v1}, Landroidx/core/app/b;->t0(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)V

    :goto_1
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->v0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->Y1(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->h2(IZ)V

    :cond_0
    return-void
.end method

.method public j2(ILjava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-static {}, Lam;->a()Lam;

    move-result-object v0

    new-instance v1, Lcom/camerasideas/collagemaker/message/c;

    invoke-direct {v1, p1, p2, p3}, Lcom/camerasideas/collagemaker/message/c;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lam;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method protected l2(ILhn;)V
    .locals 4

    const/4 v0, 0x5

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mounted"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "TesterLog-Blur BG"

    if-nez p1, :cond_0

    const p1, 0x7f0e012b

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->T(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lmr;->d(Ljava/lang/CharSequence;)V

    const-string p1, "\u70b9\u51fb\u9009\u53d6\u81ea\u5b9a\u4e49\u80cc\u666f\u65f6SD\u672a\u6302\u8f7d"

    .line 4
    invoke-static {p2, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {p1}, Lrq;->b(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "\u70b9\u51fb\u9009\u53d6\u81ea\u5b9a\u4e49\u80cc\u666f\u65f6\u6821\u9a8c\u8def\u5f84\u5931\u8d25"

    .line 6
    invoke-static {p2, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.PICK"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x20000000

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "image/*"

    .line 9
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    iget-object v2, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->k1(Landroid/content/Intent;I)V

    goto :goto_0

    .line 12
    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 15
    iget-object p2, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 16
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->k1(Landroid/content/Intent;I)V

    :cond_3
    :goto_0
    return-void

    .line 17
    :cond_4
    invoke-virtual {p2}, Lhn;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    .line 18
    invoke-virtual {p2}, Lhn;->e()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Lhn;->f()I

    move-result v1

    if-ne v1, v0, :cond_5

    .line 19
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->s0:I

    .line 20
    invoke-virtual {p2}, Lhn;->e()I

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r0:I

    .line 21
    invoke-virtual {p2}, Lhn;->e()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->p2(I)V

    goto :goto_3

    .line 22
    :cond_5
    invoke-virtual {p0, v2, v2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->n2(Landroid/net/Uri;Lcom/camerasideas/collagemaker/filter/ISCropFilter;)V

    .line 23
    iput v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->s0:I

    .line 24
    iput v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r0:I

    goto :goto_3

    .line 25
    :cond_6
    invoke-virtual {p2}, Lhn;->b()Ljava/lang/String;

    move-result-object v0

    .line 26
    :try_start_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 28
    :goto_1
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r0:I

    .line 29
    invoke-virtual {p2}, Lhn;->b()Ljava/lang/String;

    move-result-object p2

    .line 30
    :try_start_1
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    .line 31
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p2, 0x0

    .line 32
    :goto_2
    invoke-virtual {p0, p2, v3}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->o2(IZ)V

    const/4 p2, 0x3

    .line 33
    iput p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->s0:I

    .line 34
    :goto_3
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

    sget v0, Lcom/camerasideas/collagemaker/activity/adapter/h;->m:I

    invoke-virtual {p2, v0}, Lcom/camerasideas/collagemaker/activity/adapter/h;->B(I)V

    .line 35
    iput-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->p0:Ljava/lang/String;

    .line 36
    iput-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->q0:Landroid/net/Uri;

    .line 37
    iput-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->A0:Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    .line 38
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->t0:I

    .line 39
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

    invoke-virtual {p2, p1}, Lcom/camerasideas/collagemaker/activity/adapter/h;->C(I)V

    const-string p1, ""

    .line 40
    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r2(Ljava/lang/String;)V

    .line 41
    iput v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->C0:I

    const/4 p1, -0x1

    .line 42
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->D0:I

    return-void
.end method

.method protected m1()I
    .locals 1

    const v0, 0x7f0b004c

    return v0
.end method

.method public m2(Ljn;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->l0(Ljn;)Z

    :cond_1
    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->v0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->v0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    if-eqz p1, :cond_9

    const-string v0, "cutout_"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4
    invoke-virtual {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->Y1(Ljava/lang/String;)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->B0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lin;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 6
    :goto_0
    invoke-virtual {v1}, Lin;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_1

    .line 7
    invoke-virtual {v1}, Lin;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljn;

    invoke-virtual {v4}, Ljn;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8
    invoke-virtual {v1}, Lin;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljn;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v5

    :goto_1
    if-eqz v1, :cond_5

    .line 9
    invoke-static {p1}, Ldq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 10
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    sget-object v3, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h;

    invoke-virtual {v4, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 12
    array-length v4, v3

    if-lez v4, :cond_5

    .line 13
    array-length v4, v3

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_5

    aget-object v7, v3, v6

    .line 14
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 15
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "a"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "bg"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_3

    .line 16
    :cond_2
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "b"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 17
    invoke-virtual {v1, v8}, Ljn;->n(Ljava/lang/String;)V

    goto :goto_4

    .line 18
    :cond_3
    :goto_3
    invoke-virtual {v1, v8}, Ljn;->k(Ljava/lang/String;)V

    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 19
    :cond_5
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->u0:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->E0:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mBackgroundLayout:Landroid/view/View;

    invoke-static {v1}, Luq;->g(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x4

    .line 20
    iput v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->s0:I

    .line 21
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->p0:Ljava/lang/String;

    .line 22
    iput v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r0:I

    .line 23
    iput-object v5, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->A0:Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    .line 24
    iput-object v5, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->q0:Landroid/net/Uri;

    .line 25
    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r2(Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 26
    iput v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->t0:I

    .line 27
    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

    invoke-virtual {v3, v1}, Lcom/camerasideas/collagemaker/activity/adapter/h;->C(I)V

    .line 28
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->B0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lin;

    .line 29
    :goto_5
    invoke-virtual {v0}, Lin;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_7

    .line 30
    invoke-virtual {v0}, Lin;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljn;

    invoke-virtual {v1}, Ljn;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 31
    invoke-virtual {v0}, Lin;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljn;

    goto :goto_6

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    :goto_6
    if-eqz v5, :cond_9

    .line 32
    invoke-virtual {p0, v5}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->m2(Ljn;)V

    goto :goto_7

    .line 33
    :cond_8
    invoke-direct {p0, v0, v2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->h2(IZ)V

    :cond_9
    :goto_7
    return-void
.end method

.method protected n1()Lyn;
    .locals 1

    .line 1
    new-instance v0, Lno;

    invoke-direct {v0}, Lno;-><init>()V

    return-object v0
.end method

.method public n2(Landroid/net/Uri;Lcom/camerasideas/collagemaker/filter/ISCropFilter;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u9009\u53d6\u7167\u7247\u505aCutout\u80cc\u666f: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageCutoutBgFragment"

    invoke-static {v1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->u1()V

    .line 3
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/j;

    invoke-direct {v0, p0, p1, p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/j;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;Landroid/net/Uri;Lcom/camerasideas/collagemaker/filter/ISCropFilter;)V

    .line 4
    new-instance p1, Lve0;

    invoke-direct {p1, v0}, Lve0;-><init>(Lvd0;)V

    .line 5
    invoke-static {}, Lnf0;->b()Lxd0;

    move-result-object p2

    invoke-virtual {p1, p2}, Ltd0;->e(Lxd0;)Ltd0;

    move-result-object p1

    .line 6
    invoke-static {}, Lyd0;->a()Lxd0;

    move-result-object p2

    invoke-virtual {p1, p2}, Ltd0;->a(Lxd0;)Ltd0;

    move-result-object p1

    sget-object p2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/g;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/g;

    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/e;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/e;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)V

    new-instance v1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/m;

    invoke-direct {v1, p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/m;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)V

    .line 7
    invoke-static {}, Loe0;->a()Lje0;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v1, v2}, Ltd0;->b(Lje0;Lje0;Lie0;Lje0;)Lbe0;

    return-void
.end method

.method public o0()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->o0()V

    .line 2
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->w0:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mCloudBgLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->K0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->s1()V

    .line 6
    invoke-static {}, Lyp;->F()Lyp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lyp;->T(Lyp$e;)V

    .line 7
    invoke-static {}, Lyp;->F()Lyp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lyp;->U(Lyp$f;)V

    .line 8
    invoke-static {p0}, Landroidx/core/app/b;->M0(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public o2(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->i0(IZ)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "Text"

    const-string v3, "Canvas"

    const-string v4, "Background"

    const-string v5, "EditClick"

    const/4 v6, 0x3

    const/4 v7, 0x4

    const-string v8, ""

    const/4 v9, 0x2

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_a

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->y0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->u0(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->l0:Lcom/camerasideas/collagemaker/activity/adapter/p;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->y0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/activity/adapter/p;->D(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/k;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/k;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mMenuLayout:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->s2(Landroid/view/View;)V

    goto/16 :goto_a

    .line 7
    :sswitch_1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->I()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->y0:Ljava/lang/String;

    .line 8
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->C()F

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->x0:F

    .line 9
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mMenuLayout:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->s2(Landroid/view/View;)V

    .line 10
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    if-eqz p1, :cond_2b

    .line 11
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/f;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/f;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_a

    .line 12
    :sswitch_2
    iget-object p1, p0, Ltm;->U:Landroid/content/Context;

    invoke-static {p1, v5, v2}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mTextTagNew:Landroid/view/View;

    invoke-static {p1}, Luq;->g(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mTextTagNew:Landroid/view/View;

    invoke-static {p1, v0}, Luq;->t(Landroid/view/View;Z)V

    .line 15
    iget-object p1, p0, Ltm;->U:Landroid/content/Context;

    const-string v1, "EnableShowTextTagNew"

    .line 16
    invoke-static {p1, v1, v0}, Lic;->s(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 17
    :cond_1
    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->k()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->d()V

    .line 18
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 19
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    const-string v0, "LayoutWidth"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    const-string v0, "LayoutHeight"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 21
    iget-object v0, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const-class v1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;

    const v3, 0x7f080133

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Landroidx/core/app/b;->s(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;Landroid/os/Bundle;IZZ)Landroidx/fragment/app/Fragment;

    goto/16 :goto_a

    .line 22
    :sswitch_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Z()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 23
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 24
    iget-object v5, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const-class v10, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;

    invoke-virtual {p1, v5, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 25
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->j1(Landroid/content/Intent;)V

    .line 26
    :cond_2
    iget-object p1, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;->e(Landroid/content/Context;)Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;

    move-result-object p1

    .line 27
    iget-object v5, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v5}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->V()Z

    move-result v5

    .line 28
    iget-object v10, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1, v10}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;->h(Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;)V

    .line 29
    iget-object v10, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->p0:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const-string v11, "Transparent"

    const-string v12, "Color"

    if-eqz v10, :cond_8

    .line 30
    iget v10, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->s0:I

    if-eqz v10, :cond_7

    if-eq v10, v1, :cond_6

    if-eq v10, v9, :cond_5

    if-eq v10, v6, :cond_4

    if-eq v10, v7, :cond_3

    goto :goto_0

    .line 31
    :cond_3
    iget-object v10, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v10}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->J()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 32
    iget-object v8, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v8}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->J()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_4
    move-object v8, v12

    goto :goto_0

    :cond_5
    const-string v8, "Palette"

    goto :goto_0

    :cond_6
    const-string v8, "Custom"

    goto :goto_0

    :cond_7
    const/4 v5, 0x1

    move-object v8, v11

    goto :goto_0

    .line 33
    :cond_8
    iget-object v8, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->p0:Ljava/lang/String;

    .line 34
    :cond_9
    :goto_0
    invoke-virtual {p1, p0, p0, v5}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;->g(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g$a;Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g$b;Z)V

    .line 35
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->F0:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v5, "SaveFeature_Edit"

    if-nez p1, :cond_a

    .line 36
    iget-object p1, p0, Ltm;->U:Landroid/content/Context;

    iget-object v10, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->F0:Ljava/lang/String;

    invoke-static {p1, v5, v10}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    :cond_a
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->K()Lmn;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->K()Lmn;

    move-result-object p1

    invoke-virtual {p1}, Lmn;->d()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 38
    iget-object p1, p0, Ltm;->U:Landroid/content/Context;

    iget-object v10, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v10}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->K()Lmn;

    move-result-object v10

    invoke-virtual {v10}, Lmn;->d()Ljava/lang/String;

    move-result-object v10

    const-string v13, "SaveFeature_Shape"

    invoke-static {p1, v13, v10}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 39
    :cond_b
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->R()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 40
    iget-object p1, p0, Ltm;->U:Landroid/content/Context;

    const-string v10, "Eraser"

    invoke-static {p1, v5, v10}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    :cond_c
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->S()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 42
    iget-object p1, p0, Ltm;->U:Landroid/content/Context;

    const-string v10, "Magic"

    invoke-static {p1, v5, v10}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    :cond_d
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->T()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 44
    iget-object p1, p0, Ltm;->U:Landroid/content/Context;

    const-string v10, "Smooth"

    invoke-static {p1, v5, v10}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    :cond_e
    :goto_1
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 46
    iget-object p1, p0, Ltm;->U:Landroid/content/Context;

    invoke-static {p1, v5, v4}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    :cond_f
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->y()Ljava/lang/String;

    move-result-object p1

    const-string v4, "Original"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 48
    iget-object p1, p0, Ltm;->U:Landroid/content/Context;

    invoke-static {p1, v5, v3}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    :cond_10
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->D()Ljn;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->D()Ljn;

    move-result-object p1

    invoke-virtual {p1}, Ljn;->b()Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->D()Ljn;

    move-result-object p1

    invoke-virtual {p1}, Ljn;->b()Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->r()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 50
    iget-object p1, p0, Ltm;->U:Landroid/content/Context;

    const-string v3, "BGCrop"

    invoke-static {p1, v5, v3}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    :cond_11
    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->k()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->n()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 52
    iget-object p1, p0, Ltm;->U:Landroid/content/Context;

    invoke-static {p1, v5, v2}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    :cond_12
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v2, "SaveFeature_Bg"

    if-eqz p1, :cond_18

    .line 54
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->z()I

    move-result p1

    sget-object v3, Lcom/camerasideas/collagemaker/appdata/b;->g:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_13

    .line 55
    iget-object p1, p0, Ltm;->U:Landroid/content/Context;

    const-string v0, "White"

    invoke-static {p1, v2, v0}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 56
    :cond_13
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->z()I

    move-result p1

    aget-object v0, v3, v1

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_14

    .line 57
    iget-object p1, p0, Ltm;->U:Landroid/content/Context;

    const-string v0, "Black"

    invoke-static {p1, v2, v0}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 58
    :cond_14
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->z()I

    move-result p1

    aget-object v0, v3, v9

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_15

    .line 59
    iget-object p1, p0, Ltm;->U:Landroid/content/Context;

    const-string v0, "Green"

    invoke-static {p1, v2, v0}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 60
    :cond_15
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->z()I

    move-result p1

    aget-object v0, v3, v6

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_16

    .line 61
    iget-object p1, p0, Ltm;->U:Landroid/content/Context;

    const-string v0, "Red"

    invoke-static {p1, v2, v0}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 62
    :cond_16
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->z()I

    move-result p1

    aget-object v0, v3, v7

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_17

    .line 63
    iget-object p1, p0, Ltm;->U:Landroid/content/Context;

    const-string v0, "Blue"

    invoke-static {p1, v2, v0}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 64
    :cond_17
    iget-object p1, p0, Ltm;->U:Landroid/content/Context;

    invoke-static {p1, v2, v12}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 65
    :cond_18
    iget-object p1, p0, Ltm;->U:Landroid/content/Context;

    invoke-static {p1, v2, v8}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    :goto_2
    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->k()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->l()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_19
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;

    .line 67
    instance-of v1, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;

    if-eqz v1, :cond_19

    .line 68
    check-cast v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;

    .line 69
    iget-object v1, p0, Ltm;->U:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->G()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SaveFeature_Font"

    invoke-static {v1, v3, v2}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->H()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 71
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->H()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->z()I

    move-result v1

    const-string v2, "SaveFeature_Text_Color"

    if-eqz v1, :cond_1a

    .line 72
    iget-object v1, p0, Ltm;->U:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->H()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->z()I

    move-result v3

    invoke-static {v1, v3}, Lc2;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 73
    iget-object v3, p0, Ltm;->U:Landroid/content/Context;

    invoke-static {v3, v2, v1}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 74
    :cond_1a
    iget-object v1, p0, Ltm;->U:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->H()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->y()I

    move-result v3

    invoke-static {v3}, Landroidx/core/app/b;->b0(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    :goto_4
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->H()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->j()I

    move-result v1

    const-string v2, "SaveFeature_Text_Outline"

    if-eqz v1, :cond_1b

    .line 76
    iget-object v1, p0, Ltm;->U:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->H()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->j()I

    move-result v3

    invoke-static {v1, v3}, Lc2;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 77
    iget-object v3, p0, Ltm;->U:Landroid/content/Context;

    invoke-static {v3, v2, v1}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 78
    :cond_1b
    iget-object v1, p0, Ltm;->U:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->H()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->i()I

    move-result v3

    invoke-static {v3}, Landroidx/core/app/b;->b0(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    :goto_5
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->H()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->h()I

    move-result v1

    const-string v2, "SaveFeature_Text_Background"

    if-eqz v1, :cond_1c

    .line 80
    iget-object v1, p0, Ltm;->U:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->H()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->h()I

    move-result v3

    invoke-static {v1, v3}, Lc2;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 81
    iget-object v3, p0, Ltm;->U:Landroid/content/Context;

    invoke-static {v3, v2, v1}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 82
    :cond_1c
    iget-object v1, p0, Ltm;->U:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->H()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->g()I

    move-result v3

    invoke-static {v3}, Landroidx/core/app/b;->b0(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    :goto_6
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->H()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->t()I

    move-result v1

    if-eqz v1, :cond_1d

    .line 84
    iget-object v1, p0, Ltm;->U:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->H()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->t()I

    move-result v3

    invoke-static {v1, v3}, Lc2;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 85
    iget-object v3, p0, Ltm;->U:Landroid/content/Context;

    invoke-static {v3, v2, v1}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    .line 86
    :cond_1d
    iget-object v1, p0, Ltm;->U:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->H()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->r()I

    move-result v3

    invoke-static {v3}, Landroidx/core/app/b;->b0(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    :goto_7
    iget-object v1, p0, Ltm;->U:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->F()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SaveFeature_Text"

    invoke-static {v1, v3, v2}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->H()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->B()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 89
    iget-object v1, p0, Ltm;->U:Landroid/content/Context;

    const-string v2, "Bold"

    invoke-static {v1, v3, v2}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    :cond_1e
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->H()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->C()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 91
    iget-object v1, p0, Ltm;->U:Landroid/content/Context;

    const-string v2, "Italic"

    invoke-static {v1, v3, v2}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    :cond_1f
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->H()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->D()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 93
    iget-object v0, p0, Ltm;->U:Landroid/content/Context;

    const-string v1, "UnderLine"

    invoke-static {v0, v3, v1}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 94
    :cond_20
    iget-object p1, p0, Ltm;->U:Landroid/content/Context;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->y()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaveFeature_Canvas"

    invoke-static {p1, v1, v0}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 95
    :sswitch_4
    new-instance p1, Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent;

    invoke-direct {p1}, Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent;-><init>()V

    .line 96
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->s0:I

    invoke-virtual {p1, v1}, Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent;->c(I)V

    .line 97
    iget-boolean v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->G0:Z

    invoke-virtual {p1, v1}, Lcom/camerasideas/collagemaker/message/UpdateCutoutBGEvent;->d(Z)V

    .line 98
    invoke-static {}, Lam;->a()Lam;

    move-result-object v1

    invoke-virtual {v1, p1}, Lam;->b(Ljava/lang/Object;)V

    .line 99
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->d0:Landroid/view/View;

    iget-boolean v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->G0:Z

    if-eqz v1, :cond_21

    goto :goto_8

    :cond_21
    const/4 v7, 0x0

    :goto_8
    invoke-static {p1, v7}, Luq;->s(Landroid/view/View;I)V

    .line 100
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->f0:Landroid/view/View;

    invoke-static {p1, v0}, Luq;->t(Landroid/view/View;Z)V

    .line 101
    iget-object p1, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const-class v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {p1, v0}, Landroidx/core/app/b;->t0(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)V

    goto/16 :goto_a

    .line 102
    :sswitch_5
    iget-object p1, p0, Ltm;->U:Landroid/content/Context;

    invoke-static {p1, v5, v3}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mCanvasLayout:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->s2(Landroid/view/View;)V

    .line 104
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->m0:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_22

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->l0:Lcom/camerasideas/collagemaker/activity/adapter/p;

    if-eqz v0, :cond_22

    .line 105
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/adapter/p;->z()I

    move-result v0

    iget-object v1, p0, Ltm;->U:Landroid/content/Context;

    invoke-static {v1}, Lc2;->h(Landroid/content/Context;)I

    move-result v1

    div-int/2addr v1, v9

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->R1(II)V

    .line 106
    :cond_22
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    if-eqz p1, :cond_2b

    .line 107
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/d;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/d;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_a

    .line 108
    :sswitch_6
    iget-object p1, p0, Ltm;->U:Landroid/content/Context;

    invoke-static {p1, v5, v4}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mBackgroundLayout:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->s2(Landroid/view/View;)V

    .line 110
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    if-eqz p1, :cond_2b

    .line 111
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/c;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/c;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_a

    .line 112
    :sswitch_7
    iget p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->z0:I

    iget v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->s0:I

    if-eq p1, v2, :cond_23

    .line 113
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->s0:I

    .line 114
    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->k2(I)V

    goto/16 :goto_9

    :cond_23
    const/4 v2, 0x0

    if-ne p1, v6, :cond_24

    .line 115
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->z()I

    move-result p1

    iget v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r0:I

    if-eq p1, v1, :cond_2a

    .line 116
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->z()I

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r0:I

    .line 117
    invoke-virtual {p0, p1, v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->o2(IZ)V

    .line 118
    iput-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->p0:Ljava/lang/String;

    .line 119
    iput-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->q0:Landroid/net/Uri;

    .line 120
    iput-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->A0:Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    .line 121
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

    iget v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r0:I

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/activity/adapter/h;->A(I)I

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->t0:I

    .line 122
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/activity/adapter/h;->C(I)V

    .line 123
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

    sget v0, Lcom/camerasideas/collagemaker/activity/adapter/h;->m:I

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/activity/adapter/h;->B(I)V

    .line 124
    invoke-direct {p0, v8}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r2(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_24
    const/4 v3, 0x5

    if-ne p1, v3, :cond_25

    .line 125
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->z()I

    move-result p1

    iget v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r0:I

    if-eq p1, v0, :cond_2a

    .line 126
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->z()I

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r0:I

    .line 127
    invoke-virtual {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->p2(I)V

    .line 128
    iput-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->p0:Ljava/lang/String;

    .line 129
    iput-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->q0:Landroid/net/Uri;

    .line 130
    iput-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->A0:Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    .line 131
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

    iget v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r0:I

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/activity/adapter/h;->A(I)I

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->t0:I

    .line 132
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/activity/adapter/h;->C(I)V

    .line 133
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

    sget v0, Lcom/camerasideas/collagemaker/activity/adapter/h;->m:I

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/activity/adapter/h;->B(I)V

    .line 134
    invoke-direct {p0, v8}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r2(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_25
    if-ne p1, v9, :cond_26

    .line 135
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->z()I

    move-result p1

    iget v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r0:I

    if-eq p1, v0, :cond_2a

    .line 136
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->z()I

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r0:I

    .line 137
    invoke-virtual {p0, p1, v1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->o2(IZ)V

    .line 138
    iput v6, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->t0:I

    .line 139
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

    iget v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r0:I

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/activity/adapter/h;->B(I)V

    .line 140
    invoke-direct {p0, v8}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r2(Ljava/lang/String;)V

    .line 141
    iput-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->p0:Ljava/lang/String;

    .line 142
    iput-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->q0:Landroid/net/Uri;

    .line 143
    iput-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->A0:Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    goto/16 :goto_9

    :cond_26
    if-ne p1, v1, :cond_28

    .line 144
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

    invoke-virtual {p1, v9}, Lcom/camerasideas/collagemaker/activity/adapter/h;->z(I)Lhn;

    move-result-object p1

    .line 145
    invoke-virtual {p1}, Lhn;->a()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v3}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->B()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 146
    invoke-virtual {p1}, Lhn;->a()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v4}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->B()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_27

    .line 147
    invoke-virtual {p1}, Lhn;->c()Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    move-result-object v3

    iget-object v5, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v5}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->A()Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    move-result-object v5

    if-eq v3, v5, :cond_27

    .line 148
    iput v9, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->t0:I

    .line 149
    iput-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->p0:Ljava/lang/String;

    .line 150
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r0:I

    .line 151
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->B()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->q0:Landroid/net/Uri;

    .line 152
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->A()Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    move-result-object v2

    iput-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->A0:Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    .line 153
    invoke-virtual {p1, v2}, Lhn;->i(Lcom/camerasideas/collagemaker/filter/ISCropFilter;)V

    .line 154
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

    sget v3, Lcom/camerasideas/collagemaker/activity/adapter/h;->m:I

    invoke-virtual {v2, v3}, Lcom/camerasideas/collagemaker/activity/adapter/h;->B(I)V

    .line 155
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

    invoke-virtual {v2, v9}, Lcom/camerasideas/collagemaker/activity/adapter/h;->C(I)V

    .line 156
    invoke-direct {p0, v8}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r2(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1}, Lhn;->a()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Lhn;->c()Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->n2(Landroid/net/Uri;Lcom/camerasideas/collagemaker/filter/ISCropFilter;)V

    .line 158
    iput v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->s0:I

    .line 159
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->C0:I

    .line 160
    iput v4, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->D0:I

    goto/16 :goto_9

    .line 161
    :cond_27
    invoke-virtual {p1}, Lhn;->a()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v5}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->B()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 162
    iput v9, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->t0:I

    .line 163
    iput-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->p0:Ljava/lang/String;

    .line 164
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r0:I

    .line 165
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->B()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->q0:Landroid/net/Uri;

    .line 166
    invoke-virtual {p1, v2}, Lhn;->h(Landroid/net/Uri;)V

    .line 167
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->A()Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    move-result-object v2

    iput-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->A0:Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    .line 168
    invoke-virtual {p1, v2}, Lhn;->i(Lcom/camerasideas/collagemaker/filter/ISCropFilter;)V

    .line 169
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

    sget v3, Lcom/camerasideas/collagemaker/activity/adapter/h;->m:I

    invoke-virtual {v2, v3}, Lcom/camerasideas/collagemaker/activity/adapter/h;->B(I)V

    .line 170
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j0:Lcom/camerasideas/collagemaker/activity/adapter/h;

    invoke-virtual {v2, v9}, Lcom/camerasideas/collagemaker/activity/adapter/h;->C(I)V

    .line 171
    invoke-direct {p0, v8}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r2(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1}, Lhn;->a()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Lhn;->c()Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->n2(Landroid/net/Uri;Lcom/camerasideas/collagemaker/filter/ISCropFilter;)V

    .line 173
    iput v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->s0:I

    .line 174
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->C0:I

    .line 175
    iput v4, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->D0:I

    goto/16 :goto_9

    :cond_28
    if-ne p1, v7, :cond_29

    .line 176
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->J()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->p0:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_29

    .line 177
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->J()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->p0:Ljava/lang/String;

    .line 178
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r0:I

    .line 179
    iput-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->q0:Landroid/net/Uri;

    .line 180
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->A()Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->A0:Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    .line 181
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->p0:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->X1(Ljava/lang/String;)Ljn;

    move-result-object p1

    .line 182
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->p0:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r2(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->l0(Ljn;)Z

    goto :goto_9

    .line 184
    :cond_29
    iget p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->z0:I

    if-ne p1, v7, :cond_2a

    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->J()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->p0:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 185
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->J()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->X1(Ljava/lang/String;)Ljn;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 186
    invoke-virtual {p1}, Ljn;->b()Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    move-result-object v1

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v3}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->A()Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    move-result-object v3

    if-eq v1, v3, :cond_2a

    .line 187
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->A()Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljn;->l(Lcom/camerasideas/collagemaker/filter/ISCropFilter;)V

    .line 188
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->J()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->p0:Ljava/lang/String;

    .line 189
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r0:I

    .line 190
    iput-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->q0:Landroid/net/Uri;

    .line 191
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->A()Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->A0:Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    .line 192
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->p0:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r2(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->l0(Ljn;)Z

    .line 194
    :cond_2a
    :goto_9
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mMenuLayout:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->s2(Landroid/view/View;)V

    goto :goto_a

    .line 195
    :sswitch_8
    iget p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->s0:I

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->z0:I

    .line 196
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->mMenuLayout:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->s2(Landroid/view/View;)V

    .line 197
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    iget v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->r0:I

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->d0(I)V

    .line 198
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->q0:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->f0(Landroid/net/Uri;)V

    .line 199
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->p0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->v0(Ljava/lang/String;)V

    .line 200
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->A0:Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->e0(Lcom/camerasideas/collagemaker/filter/ISCropFilter;)V

    :cond_2b
    :goto_a
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08007a -> :sswitch_8
        0x7f08007b -> :sswitch_7
        0x7f080097 -> :sswitch_6
        0x7f08009b -> :sswitch_5
        0x7f0800a2 -> :sswitch_4
        0x7f0800a5 -> :sswitch_3
        0x7f0800c4 -> :sswitch_2
        0x7f0800d1 -> :sswitch_1
        0x7f0800d3 -> :sswitch_0
    .end sparse-switch
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "SubscribePro"

    .line 1
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->Z1()V

    :cond_0
    return-void
.end method

.method public p2(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->g0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->r0(I)V

    :cond_0
    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->v0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->Y1(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->h2(IZ)V

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->v0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public q2(II)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->C0:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->h2(IZ)V

    .line 2
    iput p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->D0:I

    .line 3
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->C0:I

    const/4 p2, 0x1

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->h2(IZ)V

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
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->Z1()V

    :cond_1
    :goto_0
    return-void
.end method

.method public u(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->v0:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->Y1(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->h2(IZ)V

    :cond_0
    return-void
.end method

.method public v0()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->E0:Z

    .line 2
    invoke-super {p0}, Lvm;->v0()V

    return-void
.end method

.method public z0()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->E0:Z

    .line 2
    invoke-super {p0}, Lvm;->z0()V

    return-void
.end method
