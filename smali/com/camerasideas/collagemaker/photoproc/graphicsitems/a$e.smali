.class Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;

.field final b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field


# direct methods
.method varargs constructor <init>(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;",
            "[TData;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$e;->a:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;

    .line 3
    iput-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$e;->b:[Ljava/lang/Object;

    return-void
.end method
