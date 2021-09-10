.class public final synthetic Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/k;

.field public final synthetic c:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/k;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/c;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/k;

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/c;->c:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/c;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/k;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/c;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1, p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/k;->A1(Landroid/widget/EditText;Landroid/view/View;)V

    return-void
.end method
