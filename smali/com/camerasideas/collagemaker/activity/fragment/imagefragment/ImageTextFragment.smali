.class public Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;
.super Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar$a;
.implements Llm$b;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/camerasideas/collagemaker/activity/widget/StyleEditText$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0<",
        "Ljava/lang/Object;",
        "Lro;",
        ">;",
        "Ljava/lang/Object;",
        "Landroid/widget/TextView$OnEditorActionListener;",
        "Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar$a;",
        "Llm$b;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/camerasideas/collagemaker/activity/widget/StyleEditText$a;"
    }
.end annotation


# instance fields
.field private e0:Z

.field private f0:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private g0:Llm;

.field private h0:Landroid/view/View;

.field private i0:Landroid/view/View;

.field private j0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private k0:I

.field private l0:I

.field private m0:Z

.field mBottomChildLayout:Lcn/dreamtobe/kpswitch/widget/KPSwitchFSPanelFrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBtnApply:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBtnCancel:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBtnKeyboard:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBtnTextFont:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBtnTextStyle:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mEditText:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextSizeBar:Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextSizeView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private final n0:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->e0:Z

    .line 3
    new-instance v0, Llm;

    invoke-direct {v0}, Llm;-><init>()V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->g0:Llm;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->j0:Ljava/util/List;

    .line 5
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment$a;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment$a;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->n0:Landroid/text/TextWatcher;

    .line 6
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment$b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment$b;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;Z)V

    return-void
.end method

.method private A1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mEditText:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mEditText:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-static {v0}, Lw6;->f(Landroid/view/View;)V

    return-void
.end method

.method private I1(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->j0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatImageView;

    .line 3
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 4
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v1, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v3, v2}, Luq;->t(Landroid/view/View;Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic x1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;)Landroidx/appcompat/app/AppCompatActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    return-object p0
.end method

.method private z1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mBottomChildLayout:Lcn/dreamtobe/kpswitch/widget/KPSwitchFSPanelFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->B()Landroidx/fragment/app/g;

    move-result-object v0

    const-class v1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;

    invoke-static {v0, v1}, Lcom/camerasideas/collagemaker/activity/fragment/utils/a;->b(Landroidx/fragment/app/g;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->e0:Z

    .line 3
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mBtnTextFont:Landroid/widget/FrameLayout;

    invoke-direct {p0, v1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->I1(Landroid/view/View;)V

    .line 4
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mBottomChildLayout:Lcn/dreamtobe/kpswitch/widget/KPSwitchFSPanelFrameLayout;

    invoke-static {v1, v0}, Luq;->s(Landroid/view/View;I)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->B()Landroidx/fragment/app/g;

    move-result-object v1

    const-class v2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/fragment/app/g;->c(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->B()Landroidx/fragment/app/g;

    move-result-object v1

    new-instance v2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;

    invoke-direct {v2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;-><init>()V

    const-class v3, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;

    const v4, 0x7f080083

    .line 7
    invoke-virtual {v1}, Landroidx/fragment/app/g;->a()Landroidx/fragment/app/m;

    move-result-object v1

    .line 8
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v2, v3}, Landroidx/fragment/app/m;->b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/m;

    .line 9
    :try_start_0
    invoke-virtual {v1}, Landroidx/fragment/app/m;->g()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->B()Landroidx/fragment/app/g;

    move-result-object v1

    const-class v2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroidx/core/app/b;->F0(Landroidx/fragment/app/g;Ljava/lang/Class;Z)V

    .line 12
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->B()Landroidx/fragment/app/g;

    move-result-object v1

    const-class v2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;

    .line 13
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/fragment/app/g;->c(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 14
    :cond_2
    check-cast v1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->B()Landroidx/fragment/app/g;

    move-result-object v1

    const-class v2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;

    invoke-static {v1, v2, v0}, Landroidx/core/app/b;->F0(Landroidx/fragment/app/g;Ljava/lang/Class;Z)V

    .line 16
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->A1()V

    return-void
.end method


# virtual methods
.method public B1()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const-class v1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;

    invoke-static {v0, v1}, Landroidx/core/app/b;->t0(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)V

    return-void
.end method

.method public C1(Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;I)V
    .locals 3

    int-to-float p1, p2

    const/high16 v0, 0x3fc00000    # 1.5f

    div-float/2addr p1, v0

    const/high16 v0, 0x41400000    # 12.0f

    add-float/2addr p1, v0

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mEditText:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v0

    iget-object v1, p0, Ltm;->U:Landroid/content/Context;

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v1, p1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mEditText:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->setTextSize(F)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mTextSizeView:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Luq;->t(Landroid/view/View;Z)V

    if-nez p2, :cond_1

    .line 5
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mTextSizeView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mTextSizeView:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public D0(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->D0(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "LayoutWidth"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->k0:I

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "LayoutHeight"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->l0:I

    .line 5
    :cond_0
    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->k()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->h(Z)V

    .line 6
    iget-object p1, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const v0, 0x7f0800f6

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->h0:Landroid/view/View;

    .line 7
    iget-object p1, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const v0, 0x7f08018b

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->i0:Landroid/view/View;

    .line 8
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->h0:Landroid/view/View;

    invoke-static {p1}, Luq;->g(Landroid/view/View;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->m0:Z

    .line 9
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->h0:Landroid/view/View;

    invoke-static {p1, p2}, Luq;->t(Landroid/view/View;Z)V

    .line 10
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->i0:Landroid/view/View;

    invoke-static {p1, p2}, Luq;->t(Landroid/view/View;Z)V

    .line 11
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->s1()V

    .line 12
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->j0:Ljava/util/List;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mBtnKeyboard:Landroid/widget/FrameLayout;

    aput-object v1, v0, p2

    const/4 p2, 0x1

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mBtnTextFont:Landroid/widget/FrameLayout;

    aput-object v1, v0, p2

    const/4 p2, 0x2

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mBtnTextStyle:Landroid/widget/FrameLayout;

    aput-object v1, v0, p2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mEditText:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->n0:Landroid/text/TextWatcher;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 14
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mEditText:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 15
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mEditText:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {p1, p0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->I(Lcom/camerasideas/collagemaker/activity/widget/StyleEditText$a;)V

    .line 16
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->y1()V

    .line 17
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->g0:Llm;

    iget-object p2, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1, p2, p0}, Llm;->b(Landroid/app/Activity;Llm$b;)V

    .line 18
    iget-object p1, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mBottomChildLayout:Lcn/dreamtobe/kpswitch/widget/KPSwitchFSPanelFrameLayout;

    invoke-static {p1, p2}, Lw6;->b(Landroid/app/Activity;Lcn/dreamtobe/kpswitch/b;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->f0:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 19
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mBottomChildLayout:Lcn/dreamtobe/kpswitch/widget/KPSwitchFSPanelFrameLayout;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mEditText:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/f0;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/f0;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;)V

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v0}, Lu6;->a(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lu6$b;)V

    .line 20
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mTextSizeBar:Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;

    invoke-virtual {p1, p0}, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->c(Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar$a;)V

    .line 21
    iget-object p1, p0, Ltm;->U:Landroid/content/Context;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/appdata/f;->c(Landroid/content/Context;)I

    move-result p1

    if-lez p1, :cond_1

    .line 22
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mBtnCancel:Landroid/view/View;

    iget-object p2, p0, Ltm;->U:Landroid/content/Context;

    invoke-static {p2}, Lcom/camerasideas/collagemaker/appdata/f;->c(Landroid/content/Context;)I

    move-result p2

    invoke-static {p1, p2}, Luq;->q(Landroid/view/View;I)V

    .line 23
    :cond_1
    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->k()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->m()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;

    move-result-object p2

    instance-of p2, p2, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;

    if-eqz p2, :cond_2

    .line 25
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->m()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;

    :cond_2
    if-eqz v1, :cond_3

    .line 26
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mEditText:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    new-instance p2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/g0;

    invoke-direct {p2, p0, v1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/g0;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 27
    :cond_3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mEditText:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->A()I

    move-result p1

    if-nez p1, :cond_4

    .line 28
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mTextSizeBar:Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;

    const/16 p2, 0x19

    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->d(I)V

    .line 29
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mEditText:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    const p2, 0x41e55555

    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->setTextSize(F)V

    goto :goto_0

    .line 30
    :cond_4
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mTextSizeBar:Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;

    add-int/lit8 p1, p1, -0xc

    int-to-float p1, p1

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-virtual {p2, p1}, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->d(I)V

    .line 31
    :goto_0
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->H1()V

    return-void
.end method

.method public D1(IZ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Soft keyboard status: isOpen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", softKeyboardHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImageTextFragment"

    invoke-static {v0, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Z()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->e0:Z

    const-string p1, "\u8f6f\u952e\u76d8\u6253\u5f00"

    .line 4
    invoke-static {v0, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->y1()V

    goto :goto_0

    .line 6
    :cond_1
    iget-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->e0:Z

    if-eqz p1, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->z1()V

    :cond_2
    :goto_0
    return-void
.end method

.method public E1(Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mTextSizeView:Landroid/widget/TextView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Luq;->t(Landroid/view/View;Z)V

    return-void
.end method

.method public F1(Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mTextSizeView:Landroid/widget/TextView;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Luq;->s(Landroid/view/View;I)V

    return-void
.end method

.method public G1(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Z()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->e0:Z

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->y1()V

    :cond_1
    return-void
.end method

.method public H1()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    instance-of v1, v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;

    .line 3
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->C()V

    :cond_0
    return-void
.end method

.method public J1(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mBtnApply:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, p1}, Luq;->t(Landroid/view/View;Z)V

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mBottomChildLayout:Lcn/dreamtobe/kpswitch/widget/KPSwitchFSPanelFrameLayout;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 4
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Ltm;->U:Landroid/content/Context;

    invoke-static {v1}, Lw6;->c(Landroid/content/Context;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Ltm;->U:Landroid/content/Context;

    invoke-static {v0}, Lw6;->c(Landroid/content/Context;)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mBottomChildLayout:Lcn/dreamtobe/kpswitch/widget/KPSwitchFSPanelFrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public j0(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lvm;->j0(Landroid/os/Bundle;)V

    return-void
.end method

.method protected m1()I
    .locals 1

    const v0, 0x7f0b005b

    return v0
.end method

.method protected n1()Lyn;
    .locals 1

    .line 1
    new-instance v0, Lro;

    invoke-direct {v0}, Lro;-><init>()V

    return-object v0
.end method

.method public o0()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->o0()V

    .line 2
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->A1()V

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mEditText:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->n0:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mEditText:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->I(Lcom/camerasideas/collagemaker/activity/widget/StyleEditText$a;)V

    .line 5
    iget-object v0, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->f0:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    const v2, 0x1020002

    .line 6
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->g0:Llm;

    iget-object v1, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, v1}, Llm;->c(Landroid/app/Activity;)V

    .line 9
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->h0:Landroid/view/View;

    iget-boolean v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->m0:Z

    invoke-static {v0, v1}, Luq;->t(Landroid/view/View;Z)V

    .line 10
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->i0:Landroid/view/View;

    iget-boolean v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->m0:Z

    invoke-static {v0, v1}, Luq;->t(Landroid/view/View;Z)V

    .line 11
    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->k()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->h(Z)V

    .line 12
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->H1()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mEditText:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->e()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "ImageTextFragment"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    .line 3
    :sswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Z()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->e0:Z

    if-nez p1, :cond_6

    .line 4
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->y1()V

    goto/16 :goto_2

    :sswitch_1
    const-string p1, "OnClick btn_text_style"

    .line 5
    invoke-static {v3, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mBottomChildLayout:Lcn/dreamtobe/kpswitch/widget/KPSwitchFSPanelFrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->B()Landroidx/fragment/app/g;

    move-result-object p1

    const-class v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;

    invoke-static {p1, v0}, Lcom/camerasideas/collagemaker/activity/fragment/utils/a;->b(Landroidx/fragment/app/g;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_2

    .line 7
    :cond_0
    iput-boolean v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->e0:Z

    .line 8
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mBtnTextStyle:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->I1(Landroid/view/View;)V

    .line 9
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mBottomChildLayout:Lcn/dreamtobe/kpswitch/widget/KPSwitchFSPanelFrameLayout;

    invoke-static {p1, v2}, Luq;->s(Landroid/view/View;I)V

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->B()Landroidx/fragment/app/g;

    move-result-object p1

    const-class v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/g;->c(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_1

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->B()Landroidx/fragment/app/g;

    move-result-object p1

    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;

    invoke-direct {v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;-><init>()V

    const-class v1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;

    const v3, 0x7f080083

    .line 12
    invoke-virtual {p1}, Landroidx/fragment/app/g;->a()Landroidx/fragment/app/m;

    move-result-object p1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v0, v1}, Landroidx/fragment/app/m;->b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/m;

    .line 14
    :try_start_0
    invoke-virtual {p1}, Landroidx/fragment/app/m;->g()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->B()Landroidx/fragment/app/g;

    move-result-object p1

    const-class v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;

    invoke-static {p1, v0, v1}, Landroidx/core/app/b;->F0(Landroidx/fragment/app/g;Ljava/lang/Class;Z)V

    .line 17
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->B()Landroidx/fragment/app/g;

    move-result-object p1

    const-class v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/g;->c(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 19
    :cond_2
    check-cast p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->B()Landroidx/fragment/app/g;

    move-result-object p1

    const-class v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;

    invoke-static {p1, v0, v2}, Landroidx/core/app/b;->F0(Landroidx/fragment/app/g;Ljava/lang/Class;Z)V

    .line 21
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->A1()V

    goto/16 :goto_2

    :sswitch_2
    const-string p1, "OnClick btn_text_keyboard"

    .line 22
    invoke-static {v3, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->y1()V

    goto/16 :goto_2

    :sswitch_3
    const-string p1, "OnClick btn_text_font"

    .line 24
    invoke-static {v3, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->z1()V

    goto/16 :goto_2

    :sswitch_4
    const-string p1, "OnClick Cancel"

    .line 26
    invoke-static {v3, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    .line 27
    invoke-virtual {v0, v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->R(Z)V

    .line 28
    :cond_3
    iget-object p1, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const-class v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;

    invoke-static {p1, v0}, Landroidx/core/app/b;->t0(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)V

    goto/16 :goto_2

    :sswitch_5
    const-string p1, "OnClick Apply"

    .line 29
    invoke-static {v3, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mEditText:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 31
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mEditText:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object p1

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mEditText:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->W(Ljava/lang/String;)V

    :cond_4
    if-nez v0, :cond_5

    .line 32
    new-instance p1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;

    invoke-direct {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;-><init>()V

    .line 33
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->k0:I

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->A(I)V

    .line 34
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->l0:I

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->z(I)V

    .line 35
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mEditText:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mEditText:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mEditText:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->M(I)V

    .line 36
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mEditText:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->J(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;)V

    .line 37
    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->k()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->a(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;)V

    .line 38
    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->k()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->r(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;)V

    goto :goto_1

    .line 39
    :cond_5
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mEditText:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->N(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;)V

    .line 40
    :goto_1
    iput-boolean v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->e0:Z

    .line 41
    iget-object p1, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const-class v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;

    invoke-static {p1, v0}, Landroidx/core/app/b;->t0(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)V

    .line 42
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->H1()V

    :cond_6
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f080095 -> :sswitch_5
        0x7f08009a -> :sswitch_4
        0x7f0800c7 -> :sswitch_3
        0x7f0800c9 -> :sswitch_2
        0x7f0800ca -> :sswitch_1
        0x7f080291 -> :sswitch_0
    .end sparse-switch
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEditorAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ImageTextFragment"

    invoke-static {v0, p3}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mEditText:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->A1()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected p1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public y1()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->e0:Z

    .line 2
    iget-object v0, p0, Ltm;->U:Landroid/content/Context;

    invoke-static {v0}, Lw6;->c(Landroid/content/Context;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mBottomChildLayout:Lcn/dreamtobe/kpswitch/widget/KPSwitchFSPanelFrameLayout;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 5
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v0, :cond_0

    .line 6
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mBottomChildLayout:Lcn/dreamtobe/kpswitch/widget/KPSwitchFSPanelFrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mBottomChildLayout:Lcn/dreamtobe/kpswitch/widget/KPSwitchFSPanelFrameLayout;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Luq;->s(Landroid/view/View;I)V

    .line 9
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mBtnKeyboard:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->I1(Landroid/view/View;)V

    .line 10
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mEditText:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 11
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mEditText:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 12
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mEditText:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-static {v0}, Lw6;->g(Landroid/view/View;)V

    return-void
.end method
