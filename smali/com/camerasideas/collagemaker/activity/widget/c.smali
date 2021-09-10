.class public final synthetic Lcom/camerasideas/collagemaker/activity/widget/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/c;->b:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    iput p2, p0, Lcom/camerasideas/collagemaker/activity/widget/c;->c:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/c;->b:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/c;->c:F

    invoke-virtual {v0, v1}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->k(F)V

    return-void
.end method
