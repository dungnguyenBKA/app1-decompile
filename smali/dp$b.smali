.class final enum Ldp$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldp$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Ldp$b;

.field public static final enum c:Ldp$b;

.field private static final synthetic d:[Ldp$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ldp$b;

    const-string v1, "IN_PROGRESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldp$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldp$b;->b:Ldp$b;

    .line 2
    new-instance v1, Ldp$b;

    const-string v3, "IDLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ldp$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldp$b;->c:Ldp$b;

    const/4 v3, 0x2

    new-array v3, v3, [Ldp$b;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Ldp$b;->d:[Ldp$b;

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

.method public static valueOf(Ljava/lang/String;)Ldp$b;
    .locals 1

    .line 1
    const-class v0, Ldp$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldp$b;

    return-object p0
.end method

.method public static values()[Ldp$b;
    .locals 1

    .line 1
    sget-object v0, Ldp$b;->d:[Ldp$b;

    invoke-virtual {v0}, [Ldp$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldp$b;

    return-object v0
.end method
