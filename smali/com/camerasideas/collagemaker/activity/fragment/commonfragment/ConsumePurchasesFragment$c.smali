.class Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;->D0(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment$c;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment$c;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;

    const-class v0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConsumePurchasesFragment;

    .line 2
    iget-object p1, p1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->W:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {p1, v0}, Landroidx/core/app/b;->s0(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)V

    return-void
.end method
