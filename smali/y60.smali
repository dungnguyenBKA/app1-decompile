.class public abstract enum Ly60;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ly60;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Ly60;

.field public static final enum c:Ly60;

.field private static final synthetic d:[Ly60;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ly60$a;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ly60$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly60;->b:Ly60;

    .line 2
    new-instance v1, Ly60$b;

    const-string v3, "STRING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ly60$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ly60;->c:Ly60;

    const/4 v3, 0x2

    new-array v3, v3, [Ly60;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Ly60;->d:[Ly60;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILy60$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ly60;
    .locals 1

    .line 1
    const-class v0, Ly60;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ly60;

    return-object p0
.end method

.method public static values()[Ly60;
    .locals 1

    .line 1
    sget-object v0, Ly60;->d:[Ly60;

    invoke-virtual {v0}, [Ly60;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ly60;

    return-object v0
.end method
