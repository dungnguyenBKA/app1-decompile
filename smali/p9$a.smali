.class public final enum Lp9$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lp9$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lp9$a;

.field public static final enum d:Lp9$a;

.field private static final synthetic e:[Lp9$a;


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lp9$a;

    const-string v1, "STAR"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lp9$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lp9$a;->c:Lp9$a;

    .line 2
    new-instance v1, Lp9$a;

    const-string v4, "POLYGON"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lp9$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lp9$a;->d:Lp9$a;

    new-array v4, v5, [Lp9$a;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    .line 3
    sput-object v4, Lp9$a;->e:[Lp9$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lp9$a;->b:I

    return-void
.end method

.method public static a(I)Lp9$a;
    .locals 4

    .line 1
    invoke-static {}, Lp9$a;->values()[Lp9$a;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    .line 2
    iget v3, v2, Lp9$a;->b:I

    if-ne v3, p0, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lp9$a;
    .locals 1

    .line 1
    const-class v0, Lp9$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lp9$a;

    return-object p0
.end method

.method public static values()[Lp9$a;
    .locals 1

    .line 1
    sget-object v0, Lp9$a;->e:[Lp9$a;

    invoke-virtual {v0}, [Lp9$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lp9$a;

    return-object v0
.end method
