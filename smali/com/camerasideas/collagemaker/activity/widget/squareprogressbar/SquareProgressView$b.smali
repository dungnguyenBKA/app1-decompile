.class public final enum Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;

.field public static final enum c:Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;

.field public static final enum d:Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;

.field public static final enum e:Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;

.field private static final synthetic f:[Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;->b:Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;

    new-instance v1, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;

    const-string v3, "RIGHT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;->c:Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;

    new-instance v3, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;

    const-string v5, "BOTTOM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;->d:Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;

    new-instance v5, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;

    const-string v7, "LEFT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;->e:Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 2
    sput-object v7, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;->f:[Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;
    .locals 1

    .line 1
    const-class v0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;

    return-object p0
.end method

.method public static values()[Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;->f:[Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;

    invoke-virtual {v0}, [Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;

    return-object v0
.end method
