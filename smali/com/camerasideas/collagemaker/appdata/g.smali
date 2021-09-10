.class public final enum Lcom/camerasideas/collagemaker/appdata/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/camerasideas/collagemaker/appdata/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/camerasideas/collagemaker/appdata/g;

.field public static final enum c:Lcom/camerasideas/collagemaker/appdata/g;

.field public static final enum d:Lcom/camerasideas/collagemaker/appdata/g;

.field public static final enum e:Lcom/camerasideas/collagemaker/appdata/g;

.field private static final synthetic f:[Lcom/camerasideas/collagemaker/appdata/g;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/camerasideas/collagemaker/appdata/g;

    const-string v1, "HOME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/camerasideas/collagemaker/appdata/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/camerasideas/collagemaker/appdata/g;->b:Lcom/camerasideas/collagemaker/appdata/g;

    .line 2
    new-instance v1, Lcom/camerasideas/collagemaker/appdata/g;

    const-string v3, "OPEN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/camerasideas/collagemaker/appdata/g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/camerasideas/collagemaker/appdata/g;->c:Lcom/camerasideas/collagemaker/appdata/g;

    .line 3
    new-instance v3, Lcom/camerasideas/collagemaker/appdata/g;

    const-string v5, "NEXT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/camerasideas/collagemaker/appdata/g;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/camerasideas/collagemaker/appdata/g;->d:Lcom/camerasideas/collagemaker/appdata/g;

    .line 4
    new-instance v5, Lcom/camerasideas/collagemaker/appdata/g;

    const-string v7, "SAVE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/camerasideas/collagemaker/appdata/g;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/camerasideas/collagemaker/appdata/g;->e:Lcom/camerasideas/collagemaker/appdata/g;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/camerasideas/collagemaker/appdata/g;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/camerasideas/collagemaker/appdata/g;->f:[Lcom/camerasideas/collagemaker/appdata/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/camerasideas/collagemaker/appdata/g;
    .locals 1

    .line 1
    const-class v0, Lcom/camerasideas/collagemaker/appdata/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/camerasideas/collagemaker/appdata/g;

    return-object p0
.end method

.method public static values()[Lcom/camerasideas/collagemaker/appdata/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/camerasideas/collagemaker/appdata/g;->f:[Lcom/camerasideas/collagemaker/appdata/g;

    invoke-virtual {v0}, [Lcom/camerasideas/collagemaker/appdata/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/camerasideas/collagemaker/appdata/g;

    return-object v0
.end method
