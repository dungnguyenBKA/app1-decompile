.class Lcom/camerasideas/collagemaker/activity/MainActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/AllowStorageAccessFragment$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/camerasideas/collagemaker/activity/MainActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/camerasideas/collagemaker/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/MainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/MainActivity$a;->a:Lcom/camerasideas/collagemaker/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity$a;->a:Lcom/camerasideas/collagemaker/activity/MainActivity;

    invoke-static {v0}, Landroidx/core/app/b;->E0(Landroidx/appcompat/app/AppCompatActivity;)Landroidx/fragment/app/b;

    return-void
.end method

.method public onDismiss()V
    .locals 0

    return-void
.end method
