.class public abstract Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;
.super Lvm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Ljava/lang/Object;",
        "P:",
        "Lyn<",
        "TV;>;>",
        "Lvm<",
        "TV;TP;>;",
        "Ljava/lang/Object<",
        "TP;>;"
    }
.end annotation


# instance fields
.field protected Y:Landroid/view/View;

.field protected Z:Landroid/widget/LinearLayout;

.field protected a0:Landroid/widget/LinearLayout;

.field public b0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

.field protected c0:Landroid/widget/ImageView;

.field public d0:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lvm;-><init>()V

    return-void
.end method


# virtual methods
.method public D0(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lvm;->D0(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->c0:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->r1()Z

    move-result p2

    invoke-static {p1, p2}, Luq;->t(Landroid/view/View;Z)V

    return-void
.end method

.method public m0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const v1, 0x7f080282

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->Y:Landroid/view/View;

    .line 2
    iget-object v0, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const v1, 0x7f080166

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->b0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    .line 3
    iget-object v0, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const v1, 0x7f0800b0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->Z:Landroid/widget/LinearLayout;

    .line 4
    iget-object v0, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const v1, 0x7f0800af

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->a0:Landroid/widget/LinearLayout;

    .line 5
    iget-object v0, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const v1, 0x7f08009c

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->c0:Landroid/widget/ImageView;

    .line 6
    iget-object v0, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const v1, 0x7f0800fb

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->d0:Landroid/view/View;

    .line 7
    invoke-super {p0, p1, p2, p3}, Lvm;->m0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public o0()V
    .locals 2

    .line 1
    invoke-super {p0}, Lvm;->o0()V

    .line 2
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->q1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->w1()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->c0:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->p1()Z

    move-result v1

    invoke-static {v0, v1}, Luq;->t(Landroid/view/View;Z)V

    return-void
.end method

.method public o1()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    instance-of v1, v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->c()V

    :cond_0
    return-void
.end method

.method protected p1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected q1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected r1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected s1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->Y:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Luq;->t(Landroid/view/View;Z)V

    return-void
.end method

.method public t1()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    instance-of v1, v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->v()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public u1()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    instance-of v1, v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->m()V

    :cond_0
    return-void
.end method

.method protected v1(Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "PRO_FROM"

    .line 2
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const-class v1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/SubscribeProFragment;

    const v3, 0x7f080135

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Landroidx/core/app/b;->s(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;Landroid/os/Bundle;IZZ)Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public w1()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->k()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->m()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->Y:Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Luq;->t(Landroid/view/View;Z)V

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->k()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->l()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    .line 4
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->Y:Landroid/view/View;

    invoke-static {v1, v3}, Luq;->t(Landroid/view/View;Z)V

    .line 5
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->a0:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 6
    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->k()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->f(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 7
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->a0:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 8
    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->k()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->f(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 9
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->Z:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 10
    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->k()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->g(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 11
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->Z:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 12
    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->k()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->g(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    return-void
.end method
