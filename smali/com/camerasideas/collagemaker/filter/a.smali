.class public Lcom/camerasideas/collagemaker/filter/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const-string v0, "GT-B5330"

    const-string v1, "GT-S5301"

    const-string v2, "GT-S5303"

    const-string v3, "GT-S5310"

    const-string v4, "GT-S5312"

    const-string v5, "GT-S6810"

    const-string v6, "GT-S6812"

    const-string v7, "GT-S7392"

    const-string v8, "GT-I9082"

    const-string v9, "GT-I9105"

    const-string v10, "GT-P3113"

    .line 1
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/camerasideas/collagemaker/filter/a;->a:Ljava/util/List;

    const-string v1, "LG-P509"

    const-string v2, "GT-B5512"

    const-string v3, "GT-S5300"

    const-string v4, "GT-S5360"

    const-string v5, "GT-S5363"

    const-string v6, "GT-S5367"

    const-string v7, "GT-S5367"

    const-string v8, "GT-S5830"

    const-string v9, "GT-S6102"

    const-string v10, "GT-S6802"

    const-string v11, "GT-S7272"

    const-string v12, "LG-P999"

    const-string v13, "X10i"

    const-string v14, "GT-B5330"

    .line 3
    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/camerasideas/collagemaker/filter/a;->b:Ljava/util/List;

    return-void
.end method
