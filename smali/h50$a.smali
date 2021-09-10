.class public final enum Lh50$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh50;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lh50$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lh50$a;

.field public static final enum c:Lh50$a;

.field public static final enum d:Lh50$a;

.field public static final enum e:Lh50$a;

.field public static final enum f:Lh50$a;

.field private static final synthetic g:[Lh50$a;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lh50$a;

    const-string v1, "ATTEMPT_MIGRATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lh50$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lh50$a;->b:Lh50$a;

    .line 2
    new-instance v1, Lh50$a;

    const-string v3, "NOT_GENERATED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lh50$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lh50$a;->c:Lh50$a;

    .line 3
    new-instance v3, Lh50$a;

    const-string v5, "UNREGISTERED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lh50$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lh50$a;->d:Lh50$a;

    .line 4
    new-instance v5, Lh50$a;

    const-string v7, "REGISTERED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lh50$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lh50$a;->e:Lh50$a;

    .line 5
    new-instance v7, Lh50$a;

    const-string v9, "REGISTER_ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lh50$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lh50$a;->f:Lh50$a;

    const/4 v9, 0x5

    new-array v9, v9, [Lh50$a;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lh50$a;->g:[Lh50$a;

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

.method public static valueOf(Ljava/lang/String;)Lh50$a;
    .locals 1

    .line 1
    const-class v0, Lh50$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lh50$a;

    return-object p0
.end method

.method public static values()[Lh50$a;
    .locals 1

    .line 1
    sget-object v0, Lh50$a;->g:[Lh50$a;

    invoke-virtual {v0}, [Lh50$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lh50$a;

    return-object v0
.end method
